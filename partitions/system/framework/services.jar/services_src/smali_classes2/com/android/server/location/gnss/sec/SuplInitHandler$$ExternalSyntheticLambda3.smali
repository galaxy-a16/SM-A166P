.class public final synthetic Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

.field public final synthetic f$1:Ljava/net/DatagramPacket;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;Ljava/net/DatagramPacket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    iput-object p2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda3;->f$1:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda3;->f$1:Ljava/net/DatagramPacket;

    invoke-static {v0, p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->$r8$lambda$iwTxL389V9NV5w-csZsakVPDxMA(Lcom/android/server/location/gnss/sec/SuplInitHandler;Ljava/net/DatagramPacket;)V

    return-void
.end method
