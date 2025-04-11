.class public abstract Lorg/spongycastle/bcpg/OutputStreamPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected out:Lorg/spongycastle/bcpg/BCPGOutputStream;


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/bcpg/OutputStreamPacket;->out:Lorg/spongycastle/bcpg/BCPGOutputStream;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract open()Lorg/spongycastle/bcpg/BCPGOutputStream;
.end method
