.class public final synthetic Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->$r8$lambda$lpgb5duazK5QX9V-aJr5JqL4NJs(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;Landroid/content/Intent;)V

    return-void
.end method
