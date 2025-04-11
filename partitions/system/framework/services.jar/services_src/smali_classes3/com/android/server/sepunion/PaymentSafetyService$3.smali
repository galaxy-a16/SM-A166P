.class public Lcom/android/server/sepunion/PaymentSafetyService$3;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "PaymentSafetyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/PaymentSafetyService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/PaymentSafetyService;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/server/sepunion/PaymentSafetyService$3;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    if-eqz p1, :cond_0

    .line 307
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService$3;->this$0:Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/sepunion/PaymentSafetyService;->-$$Nest$mcheckImportantApp(Lcom/android/server/sepunion/PaymentSafetyService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 0
    return-void
.end method
