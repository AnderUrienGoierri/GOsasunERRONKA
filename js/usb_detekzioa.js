/**
 * usb_detekzioa.js
 * Handles WebUSB detection and UI activation for Measurements.
 */

$(document).ready(function() {
    const neurketaElements = [
        '#nav-neurketak',           // Header link
        '#dash-neurketak-btn',      // Dashboard button
        '#dash-neurketak-card',     // Dashboard card
        '#menu-neurketak-card',     // Menu card on index
        '.footer-neurketak-link'    // Footer link
    ];

    let isConnected = false;

    // Load state from session storage to persist during navigation (simulated)
    if (sessionStorage.getItem('usb_connected') === 'true') {
        setUSBState(true);
    } else {
        setUSBState(false);
    }

    function setUSBState(connected) {
        isConnected = connected;
        sessionStorage.setItem('usb_connected', connected);
        
        const container = $('#usb-status-container');
        if (connected) {
            container.removeClass('usb-disconnected').addClass('usb-connected');
            container.attr('data-tooltip', 'Gailua konektatuta (Simulatua)');
            $(neurketaElements.join(', ')).removeClass('elementu-desaktibatua');
        } else {
            container.removeClass('usb-connected').addClass('usb-disconnected');
            container.attr('data-tooltip', 'Konektatu neurketa gailua');
            $(neurketaElements.join(', ')).addClass('elementu-desaktibatua');
        }
    }

    // Connect / Simulation Toggle
    $('#usb-status-container').click(function() {
        if (!isConnected) {
            // In a real app, we might call navigator.usb.requestDevice() here
            // For this demo/simulation, we just toggle.
            if (confirm("Neurketa gailua (USB-C) konektatu nahi duzu?")) {
                setUSBState(true);
            }
        } else {
            if (confirm("Gailua deskonektatu nahi duzu?")) {
                setUSBState(false);
                // If on neurketak page, redirect to index
                if (window.location.pathname.includes('neurketak.php')) {
                    window.location.href = 'index.php';
                }
            }
        }
    });

    // Real WebUSB listeners
    if (navigator.usb) {
        navigator.usb.addEventListener('connect', event => {
            console.log('USB connected:', event.device);
            setUSBState(true);
        });

        navigator.usb.addEventListener('disconnect', event => {
            console.log('USB disconnected:', event.device);
            setUSBState(false);
            if (window.location.pathname.includes('neurketak.php')) {
                window.location.href = 'index.php';
            }
        });

        // Check already connected devices (that we have permission for)
        navigator.usb.getDevices().then(devices => {
            if (devices.length > 0) {
                setUSBState(true);
            }
        });
    }
});
