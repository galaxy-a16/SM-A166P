.class public Lcom/android/server/accessibility/SamsungStickyKeys$2;
.super Landroid/content/BroadcastReceiver;
.source "SamsungStickyKeys.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungStickyKeys;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungStickyKeys;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SamsungStickyKeys"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$misHardwareKeyboardAvailable(Lcom/android/server/accessibility/SamsungStickyKeys;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$fputmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;I)V

    move p1, p2

    :goto_0
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-static {v0, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys;->-$$Nest$msetModifierKeyStatus(Lcom/android/server/accessibility/SamsungStickyKeys;II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
