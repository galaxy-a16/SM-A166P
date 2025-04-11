.class public Lcom/android/server/policy/PhoneWindowManagerExt$9;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 0

    .line 5613
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$9;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiFingerGesture(II)V
    .locals 0

    .line 5616
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$9;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "PhoneWindowManagerExt"

    const-string p1, "Skip multi finger gesture in DeX mode."

    .line 5617
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5620
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$9;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$mhandleMultiFingerTap(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    return-void
.end method
