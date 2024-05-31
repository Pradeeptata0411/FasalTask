<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>MovieLibrary | User Registration </title>
      <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'><link rel="stylesheet" href="/css/style.css">
    <link rel="shortcut icon" type="image/png" href="/images/apple-touch-icon.png"/>
    <link rel="stylesheet" href="style.css">
    <style>
       
       

        .container {
            width: 500px;
            margin: 0 auto;
            padding: 20px;
        }


        h1 {
            text-align: center;
            margin-bottom: 20px;
        }


        form {
            width: 100%;
        }

        .mb-3 {
            margin-bottom: 1rem;
        }


        label {
            display: block;
            margin-bottom: 5px;
        }

        input,
        select,
        textarea {
            width: 100%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        
        
        .form-check-input {
            margin-right: 5px;
        }

        html {
            height: 100%
        }

        

        header {
            z-index: 1000
        }

        section {
            position: relative;
            padding-top: 90px;
            padding-bottom: 90px
        }

        button {
            cursor: pointer
        }

        section.section-divider {
            position: relative;
            background-size: cover;
            background-position: center center;
            background-attachment: fixed
        }

        section.section-divider p {
            font-size: 1.09375rem;
            font-weight: 300;
            color: #fff
        }

        section.section-divider p:last-child {
            margin-bottom: 0
        }

        section.section-divider .overlay {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background: green;
            opacity: 0.95
        }

        section.section-divider .btn {
            margin-left: 20px
        }

        .italic {
            font-style: italic;
            font-family: "Georgia", "Times New Roman", Times, serif
        }

        .heading {
            text-align: center;
            margin-bottom: 40px
        }

        .heading:after {
            content: " ";
            display: block;
            width: 100px;
            height: 2px;
            margin: 20px auto 20px;
            background: #ff7473
        }

        .img-responsive {
            margin: 0 auto
        }

        .no-space .box {
            margin: -15px
        }

        .margin-top {
            margin-top: 30px
        }

        .margin-bottom {
            margin-bottom: 30px
        }

        .margin-bottom--big {
            margin-bottom: 60px !important
        }

        a,
        button {
            -webkit-transition: all .2s ease-out;
            transition: all .2s ease-out
        }

        a i.fa,
        button i.fa {
            margin: 0 5px
        }

        .bg-light-gray {
            background: #fafafa
        }

        .clickable {
            cursor: pointer !important
        }

        .required {
            color: #ff7473
        }

        .accent {
            color: green
        }

        .text-uppercase {
            text-transform: uppercase
        }

        .list-style-none {
            list-style: none
        }

        .panel-group {
            margin-bottom: 60px
        }

        .pages {
            text-align: center
        }

        #map {
            height: 300px
        }

        .text-bold {
            font-weight: 700
        }

        .text-small {
            font-size: 0.78rem
        }

        .bg-light-gray {
            background: #fafafa
        }

        .breadcrumb {
            background: none;
            text-align: center
        }

        .breadcrumb li,
        .breadcrumb a {
            text-transform: uppercase;
            letter-spacing: 0.1rem;
            font-weight: 300;
            font-size: 0.75rem;
            font-family: "Montserrat", Helvetica, Arial, sans-serif
        }

        input[type='file'] {
            font-size: 0.8rem
        }

        textarea.form-control {
            min-height: 120px
        }

        .btn-outline-light:hover {
            color: #ff7473 !important
        }

        .btn-outline-light:focus {
            color: #fff !important
        }

        .badge {
            text-transform: uppercase;
            font-weight: 300;
            font-family: "Montserrat", Helvetica, Arial, sans-serif;
            font-size: 0.65rem;
            padding: 5px
        }

        .table {
            font-size: 0.9rem
        }

        .table td,
        .table th {
            border-top: none;
            border-bottom: 1px solid #e9ecef
        }

        #accordion .card {
            border-color: transparent;
            margin-bottom: 10px
        }

        #accordion .card .card-header {
            background: transparent;
            padding: 0
        }

        #accordion .card .card-header h5 {
            color: #fff;
            font-weight: 300;
            text-transform: uppercase
        }

        #accordion .card .card-header button {
            color: #fff;
            font-weight: 300;
            display: block;
            width: 100%;
            text-align: left;
            padding: 10px 15px;
            letter-spacing: 0.05rem;
            -webkit-box-shadow: none;
            box-shadow: none
        }

        strong {
            font-weight: 700
        }

        .modal-content {
            border-radius: 0
        }

        .bootstrap-select.show>.dropdown-menu>.dropdown-menu {
            display: block;
            overflow-y: hidden !important
        }

        .bootstrap-select>.dropdown-menu>.dropdown-menu li.hidden {
            display: none
        }

        .bootstrap-select {
            padding-left: 0 !important;
            padding-right: 0 !important;
            padding-top: 0 !important
        }

        .bootstrap-select .dropdown-toggle {
            padding-top: 5px !important;
            background: #fff;
            padding: .375rem .75rem;
            font-size: 1rem;
            line-height: 1.5;
            color: #868e96;
            border: 1px solid #ced4da;
            font-family: "Roboto", Helvetica, Arial, sans-serif;
            text-transform: none
        }

        .bootstrap-select .dropdown-toggle:focus {
            border-color: #ff7473;
            outline: 0 !important
        }

        .bootstrap-select .dropdown-toggle span.bs-caret {
            margin-right: -20px
        }

        .bootstrap-select .dropdown-toggle .filter-option {
            font-weight: 400;
            color: #868e96
        }

        .bootstrap-select .dropdown-menu {
            border-radius: 0;
            font-size: 1em
        }

        .bootstrap-select .dropdown-menu.open {
            max-height: 230px !important;
            overflow-y: scroll !important
        }

        .bootstrap-select .dropdown-menu.open::-webkit-scrollbar {
            width: 5px
        }

        .bootstrap-select .dropdown-menu.open::-webkit-scrollbar-thumb {
            background-color: darkgrey
        }

        .bootstrap-select .dropdown-menu a {
            color: #777;
            width: 100%;
            padding: 10px;
            display: block;
            padding: 8px 10px;
            outline: none
        }

        .bootstrap-select .dropdown-menu a:hover {
            background: #ff7473;
            color: #fff
        }

        .bootstrap-select span.filter-option {
            text-transform: none !important;
            letter-spacing: 0;
            font-family: "Roboto", Helvetica, Arial, sans-serif;
            color: #aaa
        }

        .contact-form label {
            font-size: 0.85rem
        }

        .bootstrap-select>.dropdown-toggle.bs-placeholder {
            outline: none !important
        }

        .bootstrap-select.btn-group.show-tick .dropdown-menu li.selected a span.check-mark {
            top: 2px;
            right: 10px;
            width: 20px;
            height: 20px
        }

        .bootstrap-select.btn-group.show-tick .dropdown-menu li.selected a span.check-mark::before {
            content: '\f00c';
            color: #666;
            position: absolute;
            top: 0;
            right: 3px;
            display: block;
            font-family: 'FontAwesome'
        }

        .bootstrap-select.btn-group.show-tick .dropdown-menu li.selected a span.check-mark~.text {
            color: #333
        }

        .header {
            width: 100%
        }

        .navbar {
            text-transform: uppercase;
            letter-spacing: 0.1em;
            background: #746EA9;
            padding-top: 0 !important;
            padding-bottom: 0 !important
        }

        .navbar a {
            font-family: "Montserrat", Helvetica, Arial, sans-serif
        }

        .navbar ul.navbar-nav>li>a:not(.navbar-btn) {
            color: #fff;
            font-weight: 300;
            font-family: "Montserrat", Helvetica, Arial, sans-serif;
            font-size: 0.8rem
        }

        .navbar ul.navbar-nav>li>a:not(.navbar-btn):hover {
            border-top-color: #ff7473;
            color: #ff7473
        }

        @media (min-width: 992px) {
            .navbar ul.navbar-nav>li>a:not(.navbar-btn) {
                border-top: 5px solid transparent;
                padding: 40px 15px !important;
                color: #fff;
                font-weight: 300
            }

            .navbar ul.navbar-nav>li>a:not(.navbar-btn):hover {
                border-top-color: #2b8f9c;
                color: #009900
            }

            .navbar ul.navbar-nav>li.active>a,
            .navbar ul.navbar-nav>li.show>a {
                text-decoration: none !important;
                border-top-color: #ff7473;
                color: #ff7473
            }

            .navbar ul.navbar-nav>li>a.navbar-btn {
                margin: 32px 15px !important;
                -webkit-transform: translateY(4px);
                transform: translateY(4px)
            }
        }

        .navbar .navbar-toggler {
            text-transform: uppercase;
            letter-spacing: 0.1em;
            color: #fff;
            font-size: 0.8rem;
            font-family: "Montserrat", Helvetica, Arial, sans-serif;
            outline: none
        }

        ul.dropdown-menu li a {
            -webkit-transition: all .2s ease-out;
            transition: all .2s ease-out
        }

        ul.dropdown-menu li a:hover {
            -webkit-transition: all .2s ease-out;
            transition: all .2s ease-out
        }

        .dropdown-item {
            font-size: 0.8rem;
            padding-top: 10px;
            padding-bottom: 10px
        }

       


     
        .navbar-dark .navbar-brand {
            color: #fff
        }

        .navbar-dark .navbar-brand:focus,
        .navbar-dark .navbar-brand:hover {
            color: #fff
        }

        .navbar-dark .navbar-nav .nav-link {
            color: rgba(255, 255, 255, 0.5)
        }

        .navbar-dark .navbar-nav .nav-link:focus,
        .navbar-dark .navbar-nav .nav-link:hover {
            color: rgba(255, 255, 255, 0.75)
        }

        .navbar-dark .navbar-nav .nav-link.disabled {
            color: rgba(255, 255, 255, 0.25)
        }

        .navbar-dark .navbar-nav .show>.nav-link,
        .navbar-dark .navbar-nav .active>.nav-link,
        .navbar-dark .navbar-nav .nav-link.show,
        .navbar-dark .navbar-nav .nav-link.active {
            color: #fff
        }

        .navbar-dark .navbar-toggler {
            color: rgba(255, 255, 255, 0.5);
            border-color: rgba(255, 255, 255, 0.1)
        }

        .navbar-dark .navbar-toggler-icon {
            background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba(255,255,255,0.5)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E")
        }

        .navbar-dark .navbar-text {
            color: rgba(255, 255, 255, 0.5)
        }

        .btn {
            font-weight: 700;
            font-family: "Montserrat", Helvetica, Arial, sans-serif;
            border: 1px solid transparent;
            text-transform: uppercase;
            letter-spacing: 0.2em;
            padding: .375rem .75rem;
            font-size: .875rem;
            line-height: 1.5;
            border-radius: 0;
            -webkit-transition: background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
            transition: background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
            transition: background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            transition: background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out
        }

        .btn:focus,
        .btn.focus {
            outline: 0;
            -webkit-box-shadow: 0 0 0 .2rem rgba(255, 116, 115, 0.25);
            box-shadow: 0 0 0 .2rem rgba(255, 116, 115, 0.25)
        }

        .btn.disabled,
        .btn:disabled {
            opacity: .65
        }

        .btn:not([disabled]):not(.disabled):active,
        .btn:not([disabled]):not(.disabled).active {
            background-image: none
        }

        .btn-primary {
            color: color-yiq(#ff7473);
            background-color: #ff7473;
            border-color: #ff7473
        }

        .btn-primary:hover {
            color: color-yiq(#ff4e4d);
            background-color: #ff4e4d;
            border-color: #ff4140
        }

        .btn-primary:focus,
        .btn-primary.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(255, 116, 115, 0.5);
            box-shadow: 0 0 0 .2rem rgba(255, 116, 115, 0.5)
        }

        .btn-primary.disabled,
        .btn-primary:disabled {
            background-color: #ff7473;
            border-color: #ff7473
        }

        .btn-primary:not([disabled]):not(.disabled):active,
        .btn-primary:not([disabled]):not(.disabled).active,
        .show>.btn-primary.dropdown-toggle {
            color: color-yiq(#ff4140);
            background-color: #ff4140;
            border-color: #ff3533;
            -webkit-box-shadow: 0 0 0 .2rem rgba(255, 116, 115, 0.5);
            box-shadow: 0 0 0 .2rem rgba(255, 116, 115, 0.5)
        }

        .btn-secondary {
            color: color-yiq(#868e96);
            background-color: #868e96;
            border-color: #868e96
        }

        .btn-secondary:hover {
            color: color-yiq(#727b84);
            background-color: #727b84;
            border-color: #6c757d
        }

        .btn-secondary:focus,
        .btn-secondary.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(134, 142, 150, 0.5);
            box-shadow: 0 0 0 .2rem rgba(134, 142, 150, 0.5)
        }

        .btn-secondary.disabled,
        .btn-secondary:disabled {
            background-color: #868e96;
            border-color: #868e96
        }

        .btn-secondary:not([disabled]):not(.disabled):active,
        .btn-secondary:not([disabled]):not(.disabled).active,
        .show>.btn-secondary.dropdown-toggle {
            color: color-yiq(#6c757d);
            background-color: #6c757d;
            border-color: #666e76;
            -webkit-box-shadow: 0 0 0 .2rem rgba(134, 142, 150, 0.5);
            box-shadow: 0 0 0 .2rem rgba(134, 142, 150, 0.5)
        }

        .btn-success {
            color: color-yiq(#5cb85c);
            background-color: #367e8d;
            border-color: #5cb85c
        }

        .btn-success:hover {
            color: color-yiq(#48a648);
            background-color: #48a648;
            border-color: #449d44
        }

        .btn-success:focus,
        .btn-success.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(92, 184, 92, 0.5);
            box-shadow: 0 0 0 .2rem rgba(92, 184, 92, 0.5)
        }

        .btn-success.disabled,
        .btn-success:disabled {
            background-color: #5cb85c;
            border-color: #5cb85c
        }

        .btn-success:not([disabled]):not(.disabled):active,
        .btn-success:not([disabled]):not(.disabled).active,
        .show>.btn-success.dropdown-toggle {
            color: color-yiq(#449d44);
            background-color: #449d44;
            border-color: #409440;
            -webkit-box-shadow: 0 0 0 .2rem rgba(92, 184, 92, 0.5);
            box-shadow: 0 0 0 .2rem rgba(92, 184, 92, 0.5)
        }

        .btn-info {
            color: color-yiq(#17a2b8);
            background-color: #17a2b8;
            border-color: #17a2b8
        }

        .btn-info:hover {
            color: color-yiq(#138496);
            background-color: #138496;
            border-color: #117a8b
        }

        .btn-info:focus,
        .btn-info.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(23, 162, 184, 0.5);
            box-shadow: 0 0 0 .2rem rgba(23, 162, 184, 0.5)
        }

        .btn-info.disabled,
        .btn-info:disabled {
            background-color: #17a2b8;
            border-color: #17a2b8
        }

        .btn-info:not([disabled]):not(.disabled):active,
        .btn-info:not([disabled]):not(.disabled).active,
        .show>.btn-info.dropdown-toggle {
            color: color-yiq(#117a8b);
            background-color: #117a8b;
            border-color: #10707f;
            -webkit-box-shadow: 0 0 0 .2rem rgba(23, 162, 184, 0.5);
            box-shadow: 0 0 0 .2rem rgba(23, 162, 184, 0.5)
        }

        .btn-warning {
            color: color-yiq(#ffc107);
            background-color: #ffc107;
            border-color: #ffc107
        }

        .btn-warning:hover {
            color: color-yiq(#e0a800);
            background-color: #e0a800;
            border-color: #d39e00
        }

        .btn-warning:focus,
        .btn-warning.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(255, 193, 7, 0.5);
            box-shadow: 0 0 0 .2rem rgba(255, 193, 7, 0.5)
        }

        .btn-warning.disabled,
        .btn-warning:disabled {
            background-color: #ffc107;
            border-color: #ffc107
        }

        .btn-warning:not([disabled]):not(.disabled):active,
        .btn-warning:not([disabled]):not(.disabled).active,
        .show>.btn-warning.dropdown-toggle {
            color: color-yiq(#d39e00);
            background-color: #d39e00;
            border-color: #c69500;
            -webkit-box-shadow: 0 0 0 .2rem rgba(255, 193, 7, 0.5);
            box-shadow: 0 0 0 .2rem rgba(255, 193, 7, 0.5)
        }

        .btn-danger {
            color: color-yiq(#dc3545);
            background-color: #dc3545;
            border-color: #dc3545
        }

        .btn-danger:hover {
            color: color-yiq(#c82333);
            background-color: #c82333;
            border-color: #bd2130
        }

       

        .btn-outline-white-info:not([disabled]):not(.disabled):active,
        .btn-outline-white-info:not([disabled]):not(.disabled).active,
        .show>.btn-outline-white-info.dropdown-toggle {
            color: #fff;
            background-color: #17a2b8;
            border-color: #17a2b8;
            -webkit-box-shadow: 0 0 0 .2rem rgba(23, 162, 184, 0.5);
            box-shadow: 0 0 0 .2rem rgba(23, 162, 184, 0.5)
        }

        .btn-outline-warning {
            color: #ffc107;
            background-color: transparent;
            background-image: none;
            border-color: #ffc107
        }

        .btn-outline-warning:hover {
            color: #fff;
            background-color: #ffc107;
            border-color: #ffc107
        }

        .btn-outline-warning:focus,
        .btn-outline-warning.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(255, 193, 7, 0.5);
            box-shadow: 0 0 0 .2rem rgba(255, 193, 7, 0.5)
        }

        .btn-outline-warning.disabled,
        .btn-outline-warning:disabled {
            color: #ffc107;
            background-color: transparent
        }

        .btn-outline-warning:not([disabled]):not(.disabled):active,
        .btn-outline-warning:not([disabled]):not(.disabled).active,
        .show>.btn-outline-warning.dropdown-toggle {
            color: #fff;
            background-color: #ffc107;
            border-color: #ffc107;
            -webkit-box-shadow: 0 0 0 .2rem rgba(255, 193, 7, 0.5);
            box-shadow: 0 0 0 .2rem rgba(255, 193, 7, 0.5)
        }

        .btn-outline-white-warning {
            color: #ffc107;
            background-color: #fff;
            background-image: none;
            border-color: #ffc107
        }

        .btn-outline-white-warning:hover {
            color: #fff;
            background-color: #ffc107;
            border-color: #ffc107
        }

        .btn-outline-white-warning:focus,
        .btn-outline-white-warning.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(255, 193, 7, 0.5);
            box-shadow: 0 0 0 .2rem rgba(255, 193, 7, 0.5)
        }

        .btn-outline-white-warning.disabled,
        .btn-outline-white-warning:disabled {
            color: #ffc107;
            background-color: transparent
        }

        .btn-outline-white-warning:not([disabled]):not(.disabled):active,
        .btn-outline-white-warning:not([disabled]):not(.disabled).active,
        .show>.btn-outline-white-warning.dropdown-toggle {
            color: #fff;
            background-color: #ffc107;
            border-color: #ffc107;
            -webkit-box-shadow: 0 0 0 .2rem rgba(255, 193, 7, 0.5);
            box-shadow: 0 0 0 .2rem rgba(255, 193, 7, 0.5)
        }

        .btn-outline-danger {
            color: #dc3545;
            background-color: transparent;
            background-image: none;
            border-color: #dc3545
        }

        .btn-outline-danger:hover {
            color: #fff;
            background-color: #dc3545;
            border-color: #dc3545
        }

        .btn-outline-danger:focus,
        .btn-outline-danger.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(220, 53, 69, 0.5);
            box-shadow: 0 0 0 .2rem rgba(220, 53, 69, 0.5)
        }

        .btn-outline-danger.disabled,
        .btn-outline-danger:disabled {
            color: #dc3545;
            background-color: transparent
        }

        .btn-outline-danger:not([disabled]):not(.disabled):active,
        .btn-outline-danger:not([disabled]):not(.disabled).active,
        .show>.btn-outline-danger.dropdown-toggle {
            color: #fff;
            background-color: #dc3545;
            border-color: #dc3545;
            -webkit-box-shadow: 0 0 0 .2rem rgba(220, 53, 69, 0.5);
            box-shadow: 0 0 0 .2rem rgba(220, 53, 69, 0.5)
        }

        .btn-outline-white-danger {
            color: #dc3545;
            background-color: #fff;
            background-image: none;
            border-color: hsl(0, 0%, 0%)
        }

        .btn-outline-white-danger:hover {
            color: #fff;
            background-color: #dc3545;
            border-color: #dc3545
        }

        .btn-outline-white-danger:focus,
        .btn-outline-white-danger.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(220, 53, 69, 0.5);
            box-shadow: 0 0 0 .2rem rgba(220, 53, 69, 0.5)
        }

        .btn-outline-white-danger.disabled,
        .btn-outline-white-danger:disabled {
            color: #dc3545;
            background-color: transparent
        }

        .btn-outline-white-danger:not([disabled]):not(.disabled):active,
        .btn-outline-white-danger:not([disabled]):not(.disabled).active,
        .show>.btn-outline-white-danger.dropdown-toggle {
            color: #fff;
            background-color: #dc3545;
            border-color: #dc3545;
            -webkit-box-shadow: 0 0 0 .2rem rgba(220, 53, 69, 0.5);
            box-shadow: 0 0 0 .2rem rgba(220, 53, 69, 0.5)
        }

        .btn-outline-light {
            color: #fafafa;
            background-color: transparent;
            background-image: none;
            border-color: #fafafa
        }

        .btn-outline-light:hover {
            color: #fff;
            background-color: #fafafa;
            border-color: #fafafa
        }

        .btn-outline-light:focus,
        .btn-outline-light.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(250, 250, 250, 0.5);
            box-shadow: 0 0 0 .2rem rgba(250, 250, 250, 0.5)
        }

        .btn-outline-light.disabled,
        .btn-outline-light:disabled {
            color: #fafafa;
            background-color: transparent
        }

        .btn-outline-light:not([disabled]):not(.disabled):active,
        .btn-outline-light:not([disabled]):not(.disabled).active,
        .show>.btn-outline-light.dropdown-toggle {
            color: #fff;
            background-color: #fafafa;
            border-color: #fafafa;
            -webkit-box-shadow: 0 0 0 .2rem rgba(250, 250, 250, 0.5);
            box-shadow: 0 0 0 .2rem rgba(250, 250, 250, 0.5)
        }

        .btn-outline-white-light {
            color: #fafafa;
            background-color: #fff;
            background-image: none;
            border-color: #fafafa
        }

        .btn-outline-white-light:hover {
            color: #fff;
            background-color: #fafafa;
            border-color: #fafafa
        }

        .btn-outline-white-light:focus,
        .btn-outline-white-light.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(250, 250, 250, 0.5);
            box-shadow: 0 0 0 .2rem rgba(250, 250, 250, 0.5)
        }

        .btn-outline-white-light.disabled,
        .btn-outline-white-light:disabled {
            color: #fafafa;
            background-color: transparent
        }

        .btn-outline-white-light:not([disabled]):not(.disabled):active,
        .btn-outline-white-light:not([disabled]):not(.disabled).active,
        .show>.btn-outline-white-light.dropdown-toggle {
            color: #fff;
            background-color: #fafafa;
            border-color: #fafafa;
            -webkit-box-shadow: 0 0 0 .2rem rgba(250, 250, 250, 0.5);
            box-shadow: 0 0 0 .2rem rgba(250, 250, 250, 0.5)
        }

        .btn-outline-dark {
            color: #343a40;
            background-color: transparent;
            background-image: none;
            border-color: #343a40
        }

        .btn-outline-dark:hover {
            color: #fff;
            background-color: #343a40;
            border-color: #343a40
        }

        .btn-outline-dark:focus,
        .btn-outline-dark.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(52, 58, 64, 0.5);
            box-shadow: 0 0 0 .2rem rgba(52, 58, 64, 0.5)
        }

        .btn-outline-dark.disabled,
        .btn-outline-dark:disabled {
            color: #343a40;
            background-color: transparent
        }

        .btn-outline-dark:not([disabled]):not(.disabled):active,
        .btn-outline-dark:not([disabled]):not(.disabled).active,
        .show>.btn-outline-dark.dropdown-toggle {
            color: #fff;
            background-color: #343a40;
            border-color: #343a40;
            -webkit-box-shadow: 0 0 0 .2rem rgba(52, 58, 64, 0.5);
            box-shadow: 0 0 0 .2rem rgba(52, 58, 64, 0.5)
        }

        .btn-outline-white-dark {
            color: #343a40;
            background-color: #fff;
            background-image: none;
            border-color: #343a40
        }

        .btn-outline-white-dark:hover {
            color: #fff;
            background-color: #343a40;
            border-color: #343a40
        }

        .btn-outline-white-dark:focus,
        .btn-outline-white-dark.focus {
            -webkit-box-shadow: 0 0 0 .2rem rgba(52, 58, 64, 0.5);
            box-shadow: 0 0 0 .2rem rgba(52, 58, 64, 0.5)
        }

        .btn-outline-white-dark.disabled,
        .btn-outline-white-dark:disabled {
            color: #343a40;
            background-color: transparent
        }

        .btn-outline-white-dark:not([disabled]):not(.disabled):active,
        .btn-outline-white-dark:not([disabled]):not(.disabled).active,
        .show>.btn-outline-white-dark.dropdown-toggle {
            color: #fff;
            background-color: #343a40;
            border-color: #343a40;
            -webkit-box-shadow: 0 0 0 .2rem rgba(52, 58, 64, 0.5);
            box-shadow: 0 0 0 .2rem rgba(52, 58, 64, 0.5)
        }

        .btn-lg {
            padding: .5rem 1rem;
            font-size: 1.09375rem;
            line-height: 1.5;
            border-radius: 0
        }

        .btn-sm {
            padding: .25rem .5rem;
            font-size: .7875rem;
            line-height: 1.5;
            border-radius: 0
        }

        body {
            font-family: "Roboto", Helvetica, Arial, sans-serif;
            font-size: .875rem;
            font-weight: 400;
            line-height: 1.5;
            
            color: #555;
            background-color: #F9F9FB;
        }

        a {
            color: #ff7473;
            text-decoration: none
        }

        a:focus,
        a:hover {
            color: #ff2827;
            text-decoration: underline
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        .h1,
        .h2,
        .h3,
        .h4,
        .box-simple h3,
        .box-image .name h3,
        .box-image-text .top .name h3,
        .box-image-text .top .name h4,
        .h5,
        .h6 {
            margin-bottom: 1rem;
            font-family: "Montserrat", Helvetica, Arial, sans-serif;
            font-weight: 700;
            line-height: 1.2;
            color: #555;
            text-transform: uppercase;
            letter-spacing: 0.1em
        }

        h1,
        .h1 {
            font-size: 2.275rem
        }

        h2,
        .h2 {
            font-size: 1.88125rem
        }

        h3,
        .h3 {
            font-size: 1.4875rem
        }

        h4,
        .h4,
        .box-simple h3,
        .box-image .name h3,
        .box-image-text .top .name h3,
        .box-image-text .top .name h4 {
            font-size: 1.0675rem
        }

        h5,
        .h5 {
            font-size: .875rem
        }

        h6,
        .h6 {
            font-size: .74375rem
        }

        .lead {
            font-size: 1.3125rem;
            font-weight: 300
        }

        .display-1 {
            font-size: 6rem;
            font-weight: 300;
            line-height: 1.2
        }

        .display-2 {
            font-size: 5.5rem;
            font-weight: 300;
            line-height: 1.2
        }

        .display-3 {
            font-size: 4.5rem;
            font-weight: 300;
            line-height: 1.2
        }

        .display-4 {
            font-size: 3.5rem;
            font-weight: 300;
            line-height: 1.2
        }

        hr {
            border-top: 1px solid rgba(0, 0, 0, 0.1)
        }

        small,
        .small {
            font-size: 80%;
            font-weight: 400
        }

        mark,
        .mark {
            padding: .2em;
            background-color: #fcf8e3
        }

        .blockquote {
            padding: .5rem 1rem;
            margin-bottom: 2rem;
            font-size: .9rem;
            border-left: 5px solid #ff7473
        }

        .blockquote-footer {
            color: #868e96
        }

        .blockquote-footer::before {
            content: "\2014 \00A0"
        }

        .text-primary {
            color: #ff7473 !important
        }

        a.text-primary:focus,
        a.text-primary:hover {
            color: #ff4140 !important
        }

        .page-item:first-child .page-link {
            border-top-left-radius: 0rem;
            border-bottom-left-radius: 0rem
        }

        .page-item:last-child .page-link {
            border-top-right-radius: 0rem;
            border-bottom-right-radius: 0rem
        }

        .page-item.active .page-link {
            color: #fff;
            background-color: #ff7473;
            border-color: #ff7473
        }

        .page-item.disabled .page-link {
            color: #868e96;
            background-color: #fff;
            border-color: #ddd
        }

        .page-link {
            padding: .5rem .75rem;
            line-height: 1.25;
            color: #ff7473;
            background-color: #fff;
            border: 1px solid #ddd;
            font-family: "Montserrat", Helvetica, Arial, sans-serif
        }

        .page-link:focus,
        .page-link:hover {
            color: #ff2827;
            text-decoration: none;
            background-color: #e9ecef;
            border-color: #ddd
        }

        .pagination-lg .page-link {
            padding: .75rem 1.5rem;
            font-size: 1.09375rem;
            line-height: 1.5
        }

        .pagination-lg .page-item:first-child .page-link {
            border-top-left-radius: .3rem;
            border-bottom-left-radius: .3rem
        }

        .pagination-lg .page-item:last-child .page-link {
            border-top-right-radius: .3rem;
            border-bottom-right-radius: .3rem
        }

        .pagination-sm .page-link {
            padding: .25rem .5rem;
            font-size: .7875rem;
            line-height: 1.5
        }

        .pagination-sm .page-item:first-child .page-link {
            border-top-left-radius: .2rem;
            border-bottom-left-radius: .2rem
        }

        .pagination-sm .page-item:last-child .page-link {
            border-top-right-radius: .2rem;
            border-bottom-right-radius: .2rem
        }

        .bg-primary {
            background-color: #ff7473 !important
        }

        a.bg-primary:focus,
        a.bg-primary:hover {
            background-color: #ff4140 !important
        }

        .bg-secondary {
            background-color: #868e96 !important
        }

        a.bg-secondary:focus,
        a.bg-secondary:hover {
            background-color: #6c757d !important
        }

        .bg-success {
            background-color: #5cb85c !important
        }

        a.bg-success:focus,
        a.bg-success:hover {
            background-color: #449d44 !important
        }

        .bg-info {
            background-color: #17a2b8 !important
        }

        a.bg-info:focus,
        a.bg-info:hover {
            background-color: #117a8b !important
        }

        .bg-warning {
            background-color: #ffc107 !important
        }

        a.bg-warning:focus,
        a.bg-warning:hover {
            background-color: #d39e00 !important
        }

        .bg-danger {
            background-color: #dc3545 !important
        }

        a.bg-danger:focus,
        a.bg-danger:hover {
            background-color: #bd2130 !important
        }

        .bg-light {
            background-color: #fafafa !important
        }

        a.bg-light:focus,
        a.bg-light:hover {
            background-color: #e1e1e1 !important
        }

        .bg-dark {
            background-color: #343a40 !important
        }

        a.bg-dark:focus,
        a.bg-dark:hover {
            background-color: #1d2124 !important
        }

        .border-primary {
            border-color: #ff7473 !important
        }

        .border-secondary {
            border-color: #868e96 !important
        }

        .border-success {
            border-color: #5cb85c !important
        }

        .border-info {
            border-color: #17a2b8 !important
        }

        .border-warning {
            border-color: #ffc107 !important
        }

        .border-danger {
            border-color: #dc3545 !important
        }

        .border-light {
            border-color: #fafafa !important
        }

        .border-dark {
            border-color: #343a40 !important
        }

        .text-primary {
            color: #ff7473 !important
        }

        a.text-primary:focus,
        a.text-primary:hover {
            color: #ff4140 !important
        }

        .text-secondary {
            color: #868e96 !important
        }

        a.text-secondary:focus,
        a.text-secondary:hover {
            color: #6c757d !important
        }

        .text-success {
            color: #5cb85c !important
        }

        a.text-success:focus,
        a.text-success:hover {
            color: #449d44 !important
        }

        .text-info {
            color: #17a2b8 !important
        }

        a.text-info:focus,
        a.text-info:hover {
            color: #117a8b !important
        }

        .text-warning {
            color: #ffc107 !important
        }

        a.text-warning:focus,
        a.text-warning:hover {
            color: #d39e00 !important
        }

        .text-danger {
            color: #dc3545 !important
        }

        a.text-danger:focus,
        a.text-danger:hover {
            color: #bd2130 !important
        }

        .text-light {
            color: #fafafa !important
        }

        a.text-light:focus,
        a.text-light:hover {
            color: #e1e1e1 !important
        }

        .text-dark {
            color: #343a40 !important
        }

        a.text-dark:focus,
        a.text-dark:hover {
            color: #1d2124 !important
        }

        .badge-primary {
            color: color-yiq(#ff7473);
            background-color: #ff7473
        }

        .badge-primary[href]:focus,
        .badge-primary[href]:hover {
            color: color-yiq(#ff7473);
            text-decoration: none;
            background-color: #ff4140
        }

        .badge-secondary {
            color: color-yiq(#868e96);
            background-color: #868e96
        }

        .badge-secondary[href]:focus,
        .badge-secondary[href]:hover {
            color: color-yiq(#868e96);
            text-decoration: none;
            background-color: #6c757d
        }

        .badge-success {
            color: color-yiq(#5cb85c);
            background-color: #5cb85c
        }

        .badge-success[href]:focus,
        .badge-success[href]:hover {
            color: color-yiq(#5cb85c);
            text-decoration: none;
            background-color: #449d44
        }

        .badge-info {
            color: color-yiq(#17a2b8);
            background-color: #17a2b8
        }

        .badge-info[href]:focus,
        .badge-info[href]:hover {
            color: color-yiq(#17a2b8);
            text-decoration: none;
            background-color: #117a8b
        }

        .badge-warning {
            color: color-yiq(#ffc107);
            background-color: #ffc107
        }

        .badge-warning[href]:focus,
        .badge-warning[href]:hover {
            color: color-yiq(#ffc107);
            text-decoration: none;
            background-color: #d39e00
        }

        .badge-danger {
            color: color-yiq(#dc3545);
            background-color: #dc3545
        }

        .badge-danger[href]:focus,
        .badge-danger[href]:hover {
            color: color-yiq(#dc3545);
            text-decoration: none;
            background-color: #bd2130
        }

        .badge-light {
            color: color-yiq(#fafafa);
            background-color: #fafafa
        }

        .badge-light[href]:focus,
        .badge-light[href]:hover {
            color: color-yiq(#fafafa);
            text-decoration: none;
            background-color: #e1e1e1
        }

        .badge-dark {
            color: color-yiq(#343a40);
            background-color: #343a40
        }

        .badge-dark[href]:focus,
        .badge-dark[href]:hover {
            color: color-yiq(#343a40);
            text-decoration: none;
            background-color: #1d2124
        }

        .form-control {
            padding: .375rem .75rem;
            font-size: 1rem;
            line-height: 1.5;
            color: #000000;
            background-color: #fff;
            border: 1px solid #ced4da;
            border-radius: 0;
            -webkit-transition: border-color ease-in-out 0.15s, -webkit-box-shadow ease-in-out 0.15s;
            transition: border-color ease-in-out 0.15s, -webkit-box-shadow ease-in-out 0.15s;
            transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
            transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s, -webkit-box-shadow ease-in-out 0.15s
        }

        .form-control:focus {
            color: #868e96;
            background-color: #fff;
            border-color: #ff7473;
            outline: none;
            -webkit-box-shadow: 0 0 0 .2rem rgba(255, 116, 115, 0.25);
            box-shadow: 0 0 0 .2rem rgba(255, 116, 115, 0.25)
        }

        .form-control::-webkit-input-placeholder {
            color: #868e96
        }

        .form-control:-ms-input-placeholder {
            color: #868e96
        }

        .form-control::-ms-input-placeholder {
            color: #868e96
        }

       .error {
            color: red;
        }
               
    

    .card-title {
        text-align: center;
        color: #333;
    }
     #registerimage {
        width: 300px; /* Adjust the width as needed */
      margin-left: -310px;
     
    }
   .container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    
}

.registration-section {
    display: flex;
    align-items: center;
}

#registerimage {
    width: 650px; /* Adjust the width as needed */
    margin-right: -280px; /* Creates space between image and form */
    
    
}

.card {
margin-top:180px;
    width: 100%;
    border-radius: 15px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow to the card */
    padding: 30px;
    margin-left: 360px;
}


.navlogo{
       margin-top: 19px;
       }


.card-body {
    /* Your card body styles */
}

.card-title {
    text-align: center;
    color: #333;
}
    </style>
</head>

<body>
<nav>

 
</nav>
<br><br><br><br>
    <div class="container">
    <div class="registration-section">
        <img id="registerimage" alt="" src="images/register1.png">
        <div class="card">
            <div class="card-body">
                <h5 align="center" style="color:red">${message}</h5>
       <p style="color: darkblue; font-size: 24px;"> Movie Library</p>

       
        <form action="registration" method="post" id="passwordForm">
            <div class="mb-3">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" pattern=".+@gmail\.com" title="email format must be xxx@gmail.com" required>
            </div>
           
            <div class="mb-3">
                <label for="first_name">First Name:</label>
                <input type="text" class="form-control" id="first_name" name="firstname"
                    placeholder="Enter first name" required>
            </div>
            <div class="mb-3">
                <label for="last_name">Last Name:</label>
                <input type="text" class="form-control" id="last_name" name="lastname" placeholder="Enter last name" required>
            </div>
            <div class="mb-3">
                <label for="gender">Gender:</label>
                <select class="form-control" id="gender" name="gender" required>
                    <option value="">Select</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="phone_number">Phone Number:</label>
                <input type="tel" class="form-control" id="phone_number" name="contactnumber"
                    placeholder="Enter phone number" required>
            </div>
            <div class="mb-3">
                <label for="address">Address:</label>
                <textarea class="form-control" id="address" name="address" rows="3"
                    placeholder="Enter address" required></textarea>
            </div>
            <div class="mb-3">
            <label for="password1">Password:</label>
            <input type="password" class="form-control" id="password1" name="password" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,30})" placeholder="Enter password" title="Password must contain atleast one number [0-9],uppercase [A-Z],special character [!@#$%^&*], length > 8!! try again!!" required>
        </div>
        <div class="mb-3">
            <label for="password2">Confirm Password:</label>
            <input type="password" class="form-control" id="password2" name="password2" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,30})" title="Password must contain atleast one number [0-9],uppercase [A-Z],special character [!@#$%^&*], length > 8!! try again!!" placeholder="Confirm password" required>
            <span class="error" id="passwordError"></span>
            
        </div>
      
            <a href="/login">Login Here</a>
               <br>
              <br>
       
        
            <button type="submit" class="btn btn-primary">Register</button>
        </form>
        
    </div>
    </div>
    </div>
    </div>
<br>
        <br>
        <br>
     <script>
        document.addEventListener('DOMContentLoaded', function() {
            const password1 = document.getElementById('password1');
            const password2 = document.getElementById('password2');
            const passwordError = document.getElementById('passwordError');
            const passwordForm = document.getElementById('passwordForm');

            function validatePassword() {
                if (password1.value !== password2.value) {
                    passwordError.textContent = "Passwords do not match";
                    password2.setCustomValidity("Passwords do not match");
                } else {
                    passwordError.textContent = "";
                    password2.setCustomValidity('');
                }
            }

            function handleFormSubmit(event) {
                if (password1.value !== password2.value) {
                    passwordError.textContent = "Passwords do not match";
                    password2.setCustomValidity("Passwords do not match");
                    event.preventDefault();
                } else {
                    passwordError.textContent = "";
                    password2.setCustomValidity('');
                }
            }

            password1.addEventListener('input', validatePassword);
            password2.addEventListener('input', validatePassword);
            passwordForm.addEventListener('submit', handleFormSubmit);
        });
    </script>
</body>

</html>