.class public Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"

# interfaces
.implements Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;


# instance fields
.field public final network:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;->network:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;->network:Landroid/net/Network;

    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;->network:Landroid/net/Network;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;->network:Landroid/net/Network;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
