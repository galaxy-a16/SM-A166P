.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;
.super Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;
.source "UsbDescriptorsEndpointNode.java"


# instance fields
.field public final mEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;->mEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    return-void
.end method


# virtual methods
.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;->mEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    return-void
.end method
