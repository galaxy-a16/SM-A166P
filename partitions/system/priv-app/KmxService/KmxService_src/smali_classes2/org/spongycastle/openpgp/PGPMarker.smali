.class public Lorg/spongycastle/openpgp/PGPMarker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private p:Lorg/spongycastle/bcpg/MarkerPacket;


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/MarkerPacket;

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPMarker;->p:Lorg/spongycastle/bcpg/MarkerPacket;

    return-void
.end method
