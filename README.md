# ****Flutter Scrollable Widgets: A Comparative Overview****

## Overview

In the realm of Flutter app development, choosing the right scrolling widget is pivotal for creating a seamless user experience. This design document provides an insightful overview and comparison between two commonly used widgets: **`ListView`**, **`SingleChildScrollView` and `ListView.builder`**.

## Objective

This document aims to guide Flutter developers in making informed decisions regarding the selection of scrolling widgets, specifically focusing on the use cases, advantages, and considerations associated with **ListView**, **SingleChildScrollView and ListView.builder**.

**Widgets in Focus:**

- **`ListView`:**
    - **ListView** is a versatile widget for rendering a scrollable list of widgets.
    - Well-suited for both short and long lists, offering built-in support for separators and varying item heights.
    - Efficient for scenarios where the entire list can be generated upfront.
- **`SingleChildScrollView`:**
    - **SingleChildScrollView** provides a scrolling container for a single child, suitable for smaller sections of the UI.
    - Ideal for simpler layouts where the entire content can fit within the viewport.
    - No inherent support for item recycling, making it more suitable for a limited number of widgets.
- **`ListView.builder`:**
    - **ListView.builder** is specifically designed for efficient rendering of large datasets.
    - Dynamically generates items as they are scrolled into view (lazy loading), reducing memory footprint.
    - Excellent choice for scenarios with a vast or dynamic number of items.

## Case Study

In this case study, developers will overview how each of these widgets performs when used for displaying a large dataset, possibly mimicking an actual API response.

1.  ListView.builder vs SingleChildScrollView (`Profile Mode`)

    <a href="https://www.youtube.com/watch?v=AwGaOPhfImQ">
      <img src="https://github.com/kaxp/flutter_list_performance/blob/104e916d69a1384da1778c0d8edc993c349f923a/screenshots/profile_mode.png" alt="SingleChildScrollView vs ListView.builder in Profile Mode" width="600">
    </a>

    > Correction in video at **0:25**, The title of the button should be ‘Go to ListView.builder’
    
    **Average frames per second achieved in Profile mode**:
    
    ListView.builder = 60 FPS average
    
    SingleChildScrollView = 31 FPS average

    <br/>
    
3. SingleChildScrollView vs ListView vs ListView.builder (`Debug Mode`)

   <a href="https://www.youtube.com/watch?v=0ph_fFjGNI8" target="_blank">
      <img src="https://github.com/kaxp/flutter_list_performance/blob/104e916d69a1384da1778c0d8edc993c349f923a/screenshots/debug_mode.png" alt="SingleChildScrollView vs     ListView vs ListView.builder in Debug Mode" width="600">
    </a>

    
    **Average frames per second achieved in Debug mode**:
    
    ListView.builder = ~60 FPS average
    
    ListView = ~40 FPS average
    
    SingleChildScrollView = ~30 FPS average
    

## **Conclusion:**

In conclusion, the selection of a scrolling widget depends on the specific UI requirements. However, this document provides a holistic understanding of the strengths and considerations associated with **`ListView`**, **`SingleChildScrollView`**, and **`ListView.builder`**. By making an informed choice, developers can ensure an optimal scrolling experience aligned with their application's unique design and functionality.

## Notion document
Check the [Notion](https://fluttering-dress-002.notion.site/ListView-vs-SingleChildScrollView-in-Flutter-9cb96904fffa4d9f89fb176eba212eae) document
