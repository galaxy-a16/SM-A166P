.class public Lcom/android/server/media/MediaRoute2ProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaRoute2ProviderWatcher.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRoute2ProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;->this$0:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 187
    invoke-static {}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received package manager broadcast: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MR2ProviderWatcher"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;->this$0:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-static {p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->-$$Nest$mpostScanPackagesIfNeeded(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    return-void
.end method
