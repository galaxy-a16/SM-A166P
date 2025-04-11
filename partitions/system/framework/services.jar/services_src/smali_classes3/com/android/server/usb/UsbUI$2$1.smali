.class public Lcom/android/server/usb/UsbUI$2$1;
.super Ljava/lang/Object;
.source "UsbUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/usb/UsbUI$2;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbUI$2;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$2$1;->this$1:Lcom/android/server/usb/UsbUI$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
