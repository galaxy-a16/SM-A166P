.class public Lcom/android/server/accessibility/SamsungStickyKeys;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungStickyKeys.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mModifierKeyMask:I

.field public final mModifierKeyUpEvent:[Landroid/view/KeyEvent;

.field public final mModifierKeyUpPolicyFlags:[I

.field public final mModifierKeys:[Landroid/widget/TextView;

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mStickyKeysView:Landroid/view/View;

.field public final mUiThread:Ljava/lang/Thread;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$NzrGkLXID11q3IJH-T363bGbZ4Q(Lcom/android/server/accessibility/SamsungStickyKeys;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys;->lambda$setModifierKeyStatus$0(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;)I
    .locals 0

    iget p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModifierKeyUpEvent(Lcom/android/server/accessibility/SamsungStickyKeys;)[Landroid/view/KeyEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModifierKeyUpPolicyFlags(Lcom/android/server/accessibility/SamsungStickyKeys;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpPolicyFlags:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNext(Lcom/android/server/accessibility/SamsungStickyKeys;)Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdebugLog(Lcom/android/server/accessibility/SamsungStickyKeys;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misHardwareKeyboardAvailable(Lcom/android/server/accessibility/SamsungStickyKeys;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungStickyKeys;->isHardwareKeyboardAvailable()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmakeViews(Lcom/android/server/accessibility/SamsungStickyKeys;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungStickyKeys;->makeViews()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetModifierKeyStatus(Lcom/android/server/accessibility/SamsungStickyKeys;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 p2, 0x4

    new-array v0, p2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    new-array v0, p2, [Landroid/view/KeyEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpPolicyFlags:[I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    new-instance p2, Lcom/android/server/accessibility/SamsungStickyKeys$1;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/SamsungStickyKeys$1;-><init>(Lcom/android/server/accessibility/SamsungStickyKeys;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/SamsungStickyKeys$2;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungStickyKeys$2;-><init>(Lcom/android/server/accessibility/SamsungStickyKeys;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mUiThread:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mWindowManager:Landroid/view/WindowManager;

    const/16 p0, 0x63

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static createBackKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 14

    new-instance v13, Landroid/view/KeyEvent;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    return-object v13
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 p0, p0, 0xc0

    const/16 v1, 0x80

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private synthetic lambda$setModifierKeyStatus$0(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setModifierKeyStatus(), index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    aget-object p1, v0, p1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x1080aef

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x1060423

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const p2, 0x1080af0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x1060425

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_0
    return-void
.end method

.method public final debugLog(Ljava/lang/String;)V
    .locals 0

    const-string p0, "SamsungStickyKeys"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getModifierKeyStatus(I)I
    .locals 4

    const/16 v0, 0x71

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x72

    if-eq p1, v0, :cond_7

    const/16 v0, 0x75

    if-eq p1, v0, :cond_4

    const/16 v0, 0x76

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    iget p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 p1, p0, 0x10

    if-eqz p1, :cond_0

    return v3

    :cond_0
    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2

    :pswitch_1
    iget p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    and-int/2addr p0, v1

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    iget p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 p1, p0, 0x1000

    if-eqz p1, :cond_5

    return v3

    :cond_5
    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v2

    :cond_7
    iget p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 p1, p0, 0x100

    if-eqz p1, :cond_8

    return v3

    :cond_8
    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_9

    return v1

    :cond_9
    return v2

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final injectModifierKeys(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 7

    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/KeyEvent;->semSetAltPressed(Z)V

    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove STICKY_ALT_ON : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v4}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, v0, 0x30

    if-eqz v0, :cond_1

    invoke-virtual {p1, v5}, Landroid/view/KeyEvent;->semSetShiftPressed(Z)V

    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove STICKY_SHIFT_ON : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v4}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, 0x300

    if-eqz v0, :cond_2

    invoke-virtual {p1, v5}, Landroid/view/KeyEvent;->semSetCtrlPressed(Z)V

    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove STICKY_CTRL_ON : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, 0x3000

    if-eqz v0, :cond_4

    invoke-virtual {p1, v5}, Landroid/view/KeyEvent;->semSetMetaPressed(Z)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v5, 0x43

    if-ne v0, v5, :cond_3

    const-string/jumbo v0, "modify keycode to KEYCODE_BACK"

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->createBackKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    :cond_3
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove STICKY_META_ON : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v4}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-object p1
.end method

.method public final isHardwareKeyboardAvailable()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHardwareKeyboardAvailable() : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SamsungStickyKeys"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isModifierKey(I)Z
    .locals 0

    const/16 p0, 0x71

    if-eq p1, p0, :cond_0

    const/16 p0, 0x72

    if-eq p1, p0, :cond_0

    const/16 p0, 0x75

    if-eq p1, p0, :cond_0

    const/16 p0, 0x76

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final makeViews()V
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x7d9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x708

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, 0x20000

    or-int/2addr v2, v4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x10900b0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    const v5, 0x10205ac

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    const v4, 0x102029d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    const v3, 0x10201ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    const v3, 0x1020404

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->isModifierKey(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->proccessModifierKeyPress(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->getModifierKeyStatus(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ignore KeyEvent.ACTION_DOWN : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->getModifierKeyStatus(I)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore KeyEvent.ACTION_UP : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys;->saveModifierKeyUpEvent(ILandroid/view/KeyEvent;I)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    if-lez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->injectModifierKeys(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is pressed, alt : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shift : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", ctrl : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", meta : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public final proccessModifierKeyPress(I)V
    .locals 5

    const/16 v0, 0x71

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v0, :cond_7

    const/16 v0, 0x72

    if-eq p1, v0, :cond_7

    const/16 v0, 0x75

    if-eq p1, v0, :cond_4

    const/16 v0, 0x76

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    const-string/jumbo p1, "remove STICKY_SHIFT_LOCKED"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-virtual {p0, v1, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1

    const-string/jumbo p1, "remove STICKY_SHIFT_ON and set STICKY_SHIFT_LOCKED"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 p1, p1, -0x11

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo p1, "set STICKY_SHIFT_ON"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_0

    :pswitch_1
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    const-string/jumbo p1, "remove STICKY_ALT_LOCKED"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-virtual {p0, v3, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_0

    :cond_2
    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    const-string/jumbo p1, "remove STICKY_ALT_ON and set STICKY_ALT_LOCKED"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 p1, p1, -0x2

    or-int/2addr p1, v3

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-virtual {p0, v3, v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo p1, "set STICKY_ALT_ON"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_0

    :cond_4
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, p1, 0x2000

    const/4 v4, 0x3

    if-eqz v0, :cond_5

    const-string/jumbo p1, "remove STICKY_META_LOCKED"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-virtual {p0, v4, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_0

    :cond_5
    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_6

    const-string/jumbo p1, "remove STICKY_META_ON and set STICKY_META_LOCKED"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 p1, p1, -0x1001

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-virtual {p0, v4, v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_0

    :cond_6
    const-string/jumbo p1, "set STICKY_META_ON"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-virtual {p0, v4, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_0

    :cond_7
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_8

    const-string/jumbo p1, "remove STICKY_CTRL_LOCKED"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 p1, p1, -0x201

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_0

    :cond_8
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_9

    const-string/jumbo p1, "remove STICKY_CTRL_ON and set STICKY_CTRL_LOCKED"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 p1, p1, -0x101

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_0

    :cond_9
    const-string/jumbo p1, "set STICKY_CTRL_ON"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-virtual {p0, v2, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mModifierKeyMask : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public final saveModifierKeyUpEvent(ILandroid/view/KeyEvent;I)V
    .locals 1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_1

    const/16 v0, 0x72

    if-eq p1, v0, :cond_1

    const/16 v0, 0x75

    if-eq p1, v0, :cond_0

    const/16 v0, 0x76

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object p2

    aput-object p2, p1, v0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpPolicyFlags:[I

    aput p3, p0, v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final setModifierKeyStatus(II)V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/SamsungStickyKeys$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungStickyKeys;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
