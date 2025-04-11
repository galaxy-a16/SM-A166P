.class public abstract Lcom/android/server/usb/hal/gadget/UsbGadgetHalInstance;
.super Ljava/lang/Object;
.source "UsbGadgetHalInstance.java"


# direct methods
.method public static getInstance(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/internal/util/IndentingPrintWriter;)Lcom/android/server/usb/hal/gadget/UsbGadgetHal;
    .locals 3

    const/4 v0, 0x3

    const-string v1, "Querying USB Gadget HAL version"

    invoke-static {v0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->isServicePresent(Lcom/android/internal/util/IndentingPrintWriter;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    const-string v0, "USB Gadget HAL AIDL present"

    invoke-static {v2, p1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;-><init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->isServicePresent(Lcom/android/internal/util/IndentingPrintWriter;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "USB Gadget HAL HIDL present"

    invoke-static {v2, p1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;-><init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-object v0

    :cond_1
    const/4 p0, 0x6

    const-string v1, "USB Gadget HAL AIDL/HIDL not present"

    invoke-static {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-object v0
.end method
