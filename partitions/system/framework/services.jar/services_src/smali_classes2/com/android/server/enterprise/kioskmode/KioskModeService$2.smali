.class public Lcom/android/server/enterprise/kioskmode/KioskModeService$2;
.super Landroid/content/BroadcastReceiver;
.source "KioskModeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 177
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    :cond_0
    return-void
.end method
