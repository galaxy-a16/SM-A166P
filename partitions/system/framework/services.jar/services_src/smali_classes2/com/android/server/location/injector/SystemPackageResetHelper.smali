.class public Lcom/android/server/location/injector/SystemPackageResetHelper;
.super Lcom/android/server/location/injector/PackageResetHelper;
.source "SystemPackageResetHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/injector/PackageResetHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onRegister()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper;Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver-IA;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onUnregister()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method
