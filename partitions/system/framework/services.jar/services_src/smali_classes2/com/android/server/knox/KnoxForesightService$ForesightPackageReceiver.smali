.class public Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KnoxForesightService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/KnoxForesightService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/KnoxForesightService;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;->this$0:Lcom/android/server/knox/KnoxForesightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/KnoxForesightService;Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;-><init>(Lcom/android/server/knox/KnoxForesightService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ForesightPackageReceiver: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KnoxForesightService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Received unknown intent: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;->this$0:Lcom/android/server/knox/KnoxForesightService;

    invoke-virtual {p1, p2}, Lcom/android/server/knox/KnoxForesightService;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.knox.foresight"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    iget-object p0, p0, Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;->this$0:Lcom/android/server/knox/KnoxForesightService;

    invoke-virtual {p0}, Lcom/android/server/knox/KnoxForesightService;->initializeKnoxForesight()V

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "package name not matched"

    .line 184
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
