.class public Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;
.super Landroid/os/Handler;
.source "AbstractAccessibilityServiceConnection.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 353
    iget v0, p1, Landroid/os/Message;->what:I

    .line 354
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 355
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 356
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyAccessibilityEventInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/view/accessibility/AccessibilityEvent;Z)V

    return-void
.end method
