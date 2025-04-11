.class public Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 7823
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 7826
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7827
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string p2, "SEC_FLOATING_FEATURE_SIP_CONFIG_ADDTIONAL_INPUT_METHOD"

    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7829
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "SOGOU_CUSTOMIZED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.sohu.inputmethod.sogou.samsung/.SogouIME"

    goto :goto_0

    :cond_0
    const-string p1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 7832
    :goto_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetDefaultIMEForKeyboard(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
