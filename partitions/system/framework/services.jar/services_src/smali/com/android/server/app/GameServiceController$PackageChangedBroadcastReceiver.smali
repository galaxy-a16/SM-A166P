.class public final Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GameServiceController.java"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/app/GameServiceController;


# direct methods
.method public static synthetic $r8$lambda$dxEVeVs-2voEKyO2JI1mJZMxiiQ(Lcom/android/server/app/GameServiceController;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/app/GameServiceController;->-$$Nest$mevaluateActiveGameServiceProvider(Lcom/android/server/app/GameServiceController;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameServiceController;Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;->this$0:Lcom/android/server/app/GameServiceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 236
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;->this$0:Lcom/android/server/app/GameServiceController;

    invoke-static {p1}, Lcom/android/server/app/GameServiceController;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceController;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;->this$0:Lcom/android/server/app/GameServiceController;

    new-instance p2, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
