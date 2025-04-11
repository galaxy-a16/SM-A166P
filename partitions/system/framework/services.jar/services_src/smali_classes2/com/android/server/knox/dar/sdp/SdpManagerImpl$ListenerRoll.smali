.class public final Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"


# instance fields
.field public final mStateListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;-><init>()V

    return-void
.end method


# virtual methods
.method public disenroll(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public enroll(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
