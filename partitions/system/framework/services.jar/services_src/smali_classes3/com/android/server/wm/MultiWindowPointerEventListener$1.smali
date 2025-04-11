.class public Lcom/android/server/wm/MultiWindowPointerEventListener$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowPointerEventListener.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string p2, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-static {p0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->-$$Nest$fputmIsStatusBarShowing(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-static {p0, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->-$$Nest$fputmIsStatusBarShowing(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)V

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x241fab39 -> :sswitch_2
        0x9468bc0 -> :sswitch_1
        0x70549e10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
