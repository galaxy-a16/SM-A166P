.class public Lcom/android/server/am/mars/MARsBigData$1;
.super Landroid/content/BroadcastReceiver;
.source "MARsBigData.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/MARsBigData;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/MARsBigData;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 353
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 354
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 355
    iget-object p1, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-virtual {p1}, Lcom/android/server/am/mars/MARsBigData;->updateBigdataInfo()V

    .line 356
    iget-object p1, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-static {p1}, Lcom/android/server/am/mars/MARsBigData;->-$$Nest$msendBigDataInfoPLEV(Lcom/android/server/am/mars/MARsBigData;)V

    .line 357
    iget-object p0, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsBigData;->sendFGSTypeBigData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
