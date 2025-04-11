.class public final Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;
.super Landroid/media/midi/MidiReceiver;
.source "UsbAlsaMidiDevice.java"


# instance fields
.field public mReceiver:Landroid/media/midi/MidiReceiver;

.field public final synthetic this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaMidiDevice;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usb/UsbAlsaMidiDevice;Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbAlsaMidiDevice;)V

    return-void
.end method


# virtual methods
.method public onFlush()V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->flush()V

    :cond_0
    return-void
.end method

.method public onSend([BIIJ)V
    .locals 6

    .line 129
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 131
    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    :cond_0
    return-void
.end method

.method public setReceiver(Landroid/media/midi/MidiReceiver;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-void
.end method
