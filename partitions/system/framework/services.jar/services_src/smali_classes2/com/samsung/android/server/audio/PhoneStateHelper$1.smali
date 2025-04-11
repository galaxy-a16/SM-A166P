.class public Lcom/samsung/android/server/audio/PhoneStateHelper$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/PhoneStateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-static {v1}, Lcom/samsung/android/server/audio/PhoneStateHelper;->-$$Nest$fgetmRilState(Lcom/samsung/android/server/audio/PhoneStateHelper;)I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL State is changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-static {v2}, Lcom/samsung/android/server/audio/PhoneStateHelper;->-$$Nest$fgetmRilState(Lcom/samsung/android/server/audio/PhoneStateHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.PhoneStateHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v1, "l_call_ril_state_connected=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-static {v1, v0}, Lcom/samsung/android/server/audio/PhoneStateHelper;->-$$Nest$fputmRilState(Lcom/samsung/android/server/audio/PhoneStateHelper;I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/server/audio/PhoneStateHelper;->-$$Nest$mis2GTDMANetwork(Lcom/samsung/android/server/audio/PhoneStateHelper;I)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-static {v0}, Lcom/samsung/android/server/audio/PhoneStateHelper;->-$$Nest$fgetmIs2GTDMANetwork(Lcom/samsung/android/server/audio/PhoneStateHelper;)Z

    move-result v0

    if-eq v0, p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_call_2g_tdma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_2
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/PhoneStateHelper;->-$$Nest$fputmIs2GTDMANetwork(Lcom/samsung/android/server/audio/PhoneStateHelper;Z)V

    :cond_3
    return-void
.end method
