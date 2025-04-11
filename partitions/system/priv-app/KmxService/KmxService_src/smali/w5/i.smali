.class public final Lw5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:S

.field public volatile b:I

.field public final c:S

.field public final d:I

.field public final e:S

.field public final f:S

.field public final g:I

.field public final h:Lm6/d;

.field public final i:Lio/netty/channel/Channel;

.field public final j:I


# direct methods
.method public constructor <init>(IZZJZIIIZZIIIZZZZLio/netty/channel/Channel;)V
    .locals 4

    move-object v0, p0

    move/from16 v1, p14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    int-to-short v2, v2

    iput-short v2, v0, Lw5/i;->a:S

    move-wide v2, p4

    long-to-int v2, v2

    iput v2, v0, Lw5/i;->b:I

    move v2, p7

    int-to-short v2, v2

    iput-short v2, v0, Lw5/i;->c:S

    move v2, p8

    iput v2, v0, Lw5/i;->d:I

    move v2, p9

    int-to-short v2, v2

    iput-short v2, v0, Lw5/i;->e:S

    move/from16 v2, p12

    int-to-short v2, v2

    iput-short v2, v0, Lw5/i;->f:S

    move/from16 v2, p13

    iput v2, v0, Lw5/i;->g:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lm6/d;

    invoke-direct {v2, v1}, Lm6/d;-><init>(I)V

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lw5/i;->h:Lm6/d;

    move-object/from16 v1, p19

    iput-object v1, v0, Lw5/i;->i:Lio/netty/channel/Channel;

    if-eqz p10, :cond_1

    or-int/lit8 v1, p6, 0x4

    goto :goto_1

    :cond_1
    move v1, p6

    :goto_1
    if-eqz p11, :cond_2

    or-int/lit8 v1, v1, 0x8

    :cond_2
    if-eqz p15, :cond_3

    or-int/lit8 v1, v1, 0x10

    :cond_3
    if-eqz p16, :cond_4

    or-int/lit8 v1, v1, 0x20

    :cond_4
    if-eqz p17, :cond_5

    or-int/lit8 v1, v1, 0x40

    :cond_5
    if-eqz p18, :cond_6

    or-int/lit16 v1, v1, 0x80

    :cond_6
    if-eqz p2, :cond_7

    or-int/lit16 v1, v1, 0x100

    :cond_7
    if-eqz p3, :cond_8

    or-int/lit16 v1, v1, 0x200

    :cond_8
    iput v1, v0, Lw5/i;->j:I

    return-void
.end method
