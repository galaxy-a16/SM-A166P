.class public Lcom/android/server/accessibility/SamsungStickyKeys$1;
.super Landroid/os/Handler;
.source "SamsungStickyKeys.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungStickyKeys;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungStickyKeys;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 73
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fgetmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;)I

    move-result v1

    and-int/lit16 v1, v1, -0x1001

    invoke-static {p1, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fputmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;I)V

    const/4 p1, 0x3

    goto :goto_1

    .line 87
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fgetmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;)I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-static {p1, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fputmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;I)V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fgetmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;)I

    move-result v1

    and-int/lit16 v1, v1, -0x101

    invoke-static {p1, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fputmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;I)V

    const/4 p1, 0x1

    goto :goto_1

    .line 79
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fgetmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;)I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-static {p1, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fputmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;I)V

    const/4 p1, 0x2

    goto :goto_1

    .line 75
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$mmakeViews(Lcom/android/server/accessibility/SamsungStickyKeys;)V

    :goto_0
    move p1, v0

    .line 95
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fgetmModifierKeyUpEvent(Lcom/android/server/accessibility/SamsungStickyKeys;)[Landroid/view/KeyEvent;

    move-result-object v1

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fgetmNext(Lcom/android/server/accessibility/SamsungStickyKeys;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send KEY_UP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fgetmModifierKeyUpEvent(Lcom/android/server/accessibility/SamsungStickyKeys;)[Landroid/view/KeyEvent;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$mdebugLog(Lcom/android/server/accessibility/SamsungStickyKeys;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fgetmNext(Lcom/android/server/accessibility/SamsungStickyKeys;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fgetmModifierKeyUpEvent(Lcom/android/server/accessibility/SamsungStickyKeys;)[Landroid/view/KeyEvent;

    move-result-object v2

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fgetmModifierKeyUpPolicyFlags(Lcom/android/server/accessibility/SamsungStickyKeys;)[I

    move-result-object v3

    aget v3, v3, p1

    invoke-interface {v1, v2, v3}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 99
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fgetmModifierKeyUpEvent(Lcom/android/server/accessibility/SamsungStickyKeys;)[Landroid/view/KeyEvent;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 100
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys$1;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {p0}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fgetmModifierKeyUpPolicyFlags(Lcom/android/server/accessibility/SamsungStickyKeys;)[I

    move-result-object p0

    aput v0, p0, p1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
