.class public final synthetic Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;->f$0:Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->$r8$lambda$gYfh3fmvVZkUOfmMpIhSGTp5I_c(Ljava/util/Map;Landroid/hardware/radio/ITunerCallback;I)V

    return-void
.end method
