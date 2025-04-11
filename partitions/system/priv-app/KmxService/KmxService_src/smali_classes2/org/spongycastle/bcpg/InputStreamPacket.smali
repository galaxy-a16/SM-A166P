.class public Lorg/spongycastle/bcpg/InputStreamPacket;
.super Lorg/spongycastle/bcpg/Packet;
.source "SourceFile"


# instance fields
.field private in:Lorg/spongycastle/bcpg/BCPGInputStream;


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/bcpg/Packet;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/bcpg/InputStreamPacket;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    return-void
.end method


# virtual methods
.method public getInputStream()Lorg/spongycastle/bcpg/BCPGInputStream;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/InputStreamPacket;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    return-object p0
.end method
