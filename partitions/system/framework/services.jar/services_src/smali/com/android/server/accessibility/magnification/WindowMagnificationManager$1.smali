.class public Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WindowMagnificationManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    .line 163
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->removeMagnificationButton(I)Z

    .line 164
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    return-void
.end method
