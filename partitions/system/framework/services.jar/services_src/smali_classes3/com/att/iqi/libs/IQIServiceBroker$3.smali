.class Lcom/att/iqi/libs/IQIServiceBroker$3;
.super Landroid/content/BroadcastReceiver;
.source "IQIServiceBroker.java"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$3;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.intent.extra.PHONE_NUMBER"

    .line 176
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$3;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p2, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mmaybeIsValidKeyCode(Lcom/att/iqi/libs/IQIServiceBroker;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 178
    iget-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$3;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object p2

    .line 180
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/att/iqi/IIQIService;->reportKeyCode([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 181
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultData(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "reportKeyCode failed"

    .line 186
    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
