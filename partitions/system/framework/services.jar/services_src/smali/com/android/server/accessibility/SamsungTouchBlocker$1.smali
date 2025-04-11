.class public Lcom/android/server/accessibility/SamsungTouchBlocker$1;
.super Landroid/os/Handler;
.source "SamsungTouchBlocker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTouchBlocker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string p1, "SamsungTouchBlocker"

    const-string v0, "Touch Blocker is deactivated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->-$$Nest$fputmIsBlocking(Lcom/android/server/accessibility/SamsungTouchBlocker;Z)V

    return-void
.end method
