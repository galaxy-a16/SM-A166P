.class public Lcom/android/server/media/SystemMediaRoute2Provider$1;
.super Ljava/lang/Object;
.source "SystemMediaRoute2Provider.java"

# interfaces
.implements Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method public static synthetic $r8$lambda$0ZwTvhxLRNCtdJCNZz5Q9Rr0jN8(Lcom/android/server/media/SystemMediaRoute2Provider$1;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider$1;->lambda$onDevicesForAttributesChanged$0(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDevicesForAttributesChanged$0(Ljava/util/List;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-static {v0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->-$$Nest$mupdateSelectedAudioDevice(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/util/List;)V

    .line 101
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    .line 102
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifySessionInfoUpdated()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDevicesForAttributesChanged(Landroid/media/AudioAttributes;Ljava/util/List;)V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDevicesForAttributesChanged AudioDeviceAttributes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " devices = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2SystemProvider"

    .line 93
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-static {p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->-$$Nest$fgetmHandler(Lcom/android/server/media/SystemMediaRoute2Provider;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/media/SystemMediaRoute2Provider$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider$1;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
