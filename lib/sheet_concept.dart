// Sheet

/// 1. AppSheet -> Open(body: Widget,options: SheetOptions)
/// SheetOptions -> title - isScrollable - isDismissible - isDraggable - isScrollControlled - isFullScreen
// UI // Sheet header - Sheet Footer

/// 2. SheetSelection<T> -> Open(title: String, items: List<SheetSelectionItem>,options: SheetOptions)
/// TitleInterface -> id - title - image? - children ?

/// enum SheetSelectionType { single, multi , combo }


/// 3. SheetCountryPicker -> Open(title: String, items: List<SheetSelectionItem>,options: SheetOptions)
/// SheetCountryPickerItem -> id - title - image? - children ?


// Sheet Header -> interface ( title - onClose )
// body ....
// Sheet Footer -> interface ( title - OnSubmit )
