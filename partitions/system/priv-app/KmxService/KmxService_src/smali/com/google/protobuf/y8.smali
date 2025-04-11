.class public final Lcom/google/protobuf/y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/z9;


# static fields
.field public static final q:[I

.field public static final r:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/protobuf/r8;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:[I

.field public final j:I

.field public final k:I

.field public final l:Lcom/google/protobuf/g9;

.field public final m:Lcom/google/protobuf/p7;

.field public final n:Lcom/google/protobuf/kb;

.field public final o:Lcom/google/protobuf/u4;

.field public final p:Lcom/google/protobuf/i8;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/y8;->q:[I

    invoke-static {}, Lcom/google/protobuf/wb;->n()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/y8;->r:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/r8;Z[IIILcom/google/protobuf/g9;Lcom/google/protobuf/p7;Lcom/google/protobuf/kb;Lcom/google/protobuf/u4;Lcom/google/protobuf/i8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/y8;->a:[I

    iput-object p2, p0, Lcom/google/protobuf/y8;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/protobuf/y8;->c:I

    iput p4, p0, Lcom/google/protobuf/y8;->d:I

    iput-boolean p6, p0, Lcom/google/protobuf/y8;->g:Z

    const/4 p1, 0x1

    if-eqz p13, :cond_0

    invoke-virtual {p13, p5}, Lcom/google/protobuf/u4;->b(Lcom/google/protobuf/r8;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/protobuf/y8;->f:Z

    iput-boolean p1, p0, Lcom/google/protobuf/y8;->h:Z

    iput-object p7, p0, Lcom/google/protobuf/y8;->i:[I

    iput p8, p0, Lcom/google/protobuf/y8;->j:I

    iput p9, p0, Lcom/google/protobuf/y8;->k:I

    iput-object p10, p0, Lcom/google/protobuf/y8;->l:Lcom/google/protobuf/g9;

    iput-object p11, p0, Lcom/google/protobuf/y8;->m:Lcom/google/protobuf/p7;

    iput-object p12, p0, Lcom/google/protobuf/y8;->n:Lcom/google/protobuf/kb;

    iput-object p13, p0, Lcom/google/protobuf/y8;->o:Lcom/google/protobuf/u4;

    iput-object p5, p0, Lcom/google/protobuf/y8;->e:Lcom/google/protobuf/r8;

    iput-object p14, p0, Lcom/google/protobuf/y8;->p:Lcom/google/protobuf/i8;

    return-void
.end method

.method public static m(JLjava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p2, p0, p1}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static s(Lcom/google/protobuf/o8;Lcom/google/protobuf/g9;Lcom/google/protobuf/p7;Lcom/google/protobuf/kb;Lcom/google/protobuf/u4;Lcom/google/protobuf/i8;)Lcom/google/protobuf/y8;
    .locals 0

    check-cast p0, Lcom/google/protobuf/ta;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public static t(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p2, p0, p1}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static u(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p2, p0, p1}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static y(Ljava/lang/Object;ILcom/google/protobuf/t9;)V
    .locals 2

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xfffff

    and-int/2addr p1, v1

    if-eqz v0, :cond_1

    int-to-long v0, p1

    invoke-interface {p2}, Lcom/google/protobuf/t9;->H()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    int-to-long v0, p1

    invoke-interface {p2}, Lcom/google/protobuf/t9;->x()Lcom/google/protobuf/ByteString;

    move-result-object p1

    :goto_1
    invoke-static {p0, v0, v1, p1}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/y8;->a:[I

    aget p0, p0, p1

    const p1, 0xfffff

    and-int/2addr p1, p0

    int-to-long v0, p1

    const-wide/32 v2, 0xfffff

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    const/4 p1, 0x1

    shl-int p0, p1, p0

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->k(Ljava/lang/Object;J)I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0, v0, v1, p2}, Lcom/google/protobuf/wb;->s(IJLjava/lang/Object;)V

    return-void
.end method

.method public final B(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/protobuf/y8;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p3}, Lcom/google/protobuf/wb;->s(IJLjava/lang/Object;)V

    return-void
.end method

.method public final C(ILjava/lang/Object;Lcom/google/protobuf/r8;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y8;->E(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/y8;->r:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y8;->A(ILjava/lang/Object;)V

    return-void
.end method

.method public final D(IILjava/lang/Object;Lcom/google/protobuf/r8;)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/protobuf/y8;->E(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/y8;->r:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/y8;->B(IILjava/lang/Object;)V

    return-void
.end method

.method public final E(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/protobuf/y8;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/y8;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/y8;->E(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    aget v1, v1, v0

    const/high16 v3, 0xff00000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x14

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/y8;->p(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    invoke-static {p2, v6, v7}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v6, v7, v2}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/protobuf/y8;->B(IILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_3
    sget-object v1, Lcom/google/protobuf/aa;->a:Ljava/lang/Class;

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v6, v7}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/y8;->p:Lcom/google/protobuf/i8;

    invoke-interface {v3, v1, v2}, Lcom/google/protobuf/i8;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_4
    iget-object v1, p0, Lcom/google/protobuf/y8;->m:Lcom/google/protobuf/p7;

    invoke-virtual {v1, v6, v7, p1, p2}, Lcom/google/protobuf/p7;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    :pswitch_6
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :pswitch_c
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/y8;->o(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_3
    invoke-static {p2, v6, v7}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :pswitch_e
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/vb;->d(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/protobuf/vb;->n(Ljava/lang/Object;JZ)V

    goto :goto_6

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_5

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_4
    invoke-static {p2, v6, v7}, Lcom/google/protobuf/wb;->k(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/wb;->s(IJLjava/lang/Object;)V

    goto :goto_6

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_5

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_5
    invoke-static {p2, v6, v7}, Lcom/google/protobuf/wb;->l(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/wb;->t(Ljava/lang/Object;JJ)V

    goto :goto_6

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/vb;->h(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/protobuf/vb;->q(Ljava/lang/Object;JF)V

    goto :goto_6

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v4, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/protobuf/vb;->g(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/protobuf/vb;->p(Ljava/lang/Object;JD)V

    :goto_6
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/y8;->A(ILjava/lang/Object;)V

    :cond_1
    :goto_7
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_1

    :cond_2
    sget-object p2, Lcom/google/protobuf/aa;->a:Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/protobuf/y8;->n:Lcom/google/protobuf/kb;

    check-cast p0, Lcom/google/protobuf/qb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mutating immutable message: "

    invoke-static {p2, p1}, Landroidx/activity/b;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/y8;->a:[I

    array-length v1, v1

    :goto_1
    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/protobuf/y8;->E(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v3, v3

    const/high16 v5, 0xff00000

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x14

    const/16 v5, 0x9

    sget-object v6, Lcom/google/protobuf/y8;->r:Lsun/misc/Unsafe;

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/google/protobuf/y8;->p:Lcom/google/protobuf/i8;

    invoke-interface {v5, v2}, Lcom/google/protobuf/i8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/google/protobuf/y8;->m:Lcom/google/protobuf/p7;

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/protobuf/p7;->a(JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :pswitch_2
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v2

    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/z9;->b(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/google/protobuf/y8;->n:Lcom/google/protobuf/kb;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/kb;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Lcom/google/protobuf/t9;Lcom/google/protobuf/t4;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_11

    iget-object v11, v8, Lcom/google/protobuf/y8;->n:Lcom/google/protobuf/kb;

    iget-object v12, v8, Lcom/google/protobuf/y8;->o:Lcom/google/protobuf/u4;

    iget-object v13, v8, Lcom/google/protobuf/y8;->i:[I

    iget v14, v8, Lcom/google/protobuf/y8;->k:I

    iget v15, v8, Lcom/google/protobuf/y8;->j:I

    :goto_1
    const/4 v7, 0x0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->q()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/google/protobuf/y8;->v(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v16, 0x0

    if-gez v5, :cond_4

    const v0, 0x7fffffff

    if-ne v1, v0, :cond_2

    :goto_2
    if-ge v15, v14, :cond_1

    aget v3, v13, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v7

    move-object v5, v11

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/y8;->f(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/kb;Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-boolean v0, v8, Lcom/google/protobuf/y8;->f:Z

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, v8, Lcom/google/protobuf/y8;->e:Lcom/google/protobuf/r8;

    invoke-virtual {v12, v10, v0, v1}, Lcom/google/protobuf/u4;->a(Lcom/google/protobuf/t4;Lcom/google/protobuf/r8;I)V

    :goto_3
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v16

    :cond_4
    invoke-virtual {v8, v5}, Lcom/google/protobuf/y8;->E(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v2, 0xff00000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x14

    const v4, 0xfffff

    iget-object v6, v8, Lcom/google/protobuf/y8;->m:Lcom/google/protobuf/p7;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1f

    :pswitch_0
    :try_start_2
    invoke-virtual {v8, v1, v5, v9}, Lcom/google/protobuf/y8;->r(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r8;

    invoke-virtual {v8, v5}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v3

    invoke-interface {v0, v2, v3, v10}, Lcom/google/protobuf/t9;->m(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    goto :goto_5

    :pswitch_1
    and-int v2, v3, v4

    int-to-long v2, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->j()J

    move-result-wide v6

    goto/16 :goto_8

    :pswitch_2
    and-int v2, v3, v4

    int-to-long v2, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->g()I

    move-result v4

    goto/16 :goto_6

    :pswitch_3
    and-int v2, v3, v4

    int-to-long v2, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->s()J

    move-result-wide v6

    goto/16 :goto_8

    :pswitch_4
    and-int v2, v3, v4

    int-to-long v2, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->B()I

    move-result v4

    goto :goto_6

    :pswitch_5
    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->b()I

    move-result v2

    invoke-virtual {v8, v5}, Lcom/google/protobuf/y8;->g(I)Lcom/google/protobuf/b7;

    move-result-object v6

    if-eqz v6, :cond_6

    check-cast v6, Lcom/google/protobuf/o0;

    invoke-virtual {v6, v2}, Lcom/google/protobuf/o0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v9, v1, v2, v7, v11}, Lcom/google/protobuf/aa;->A(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/kb;)V

    goto/16 :goto_b

    :cond_6
    :goto_4
    and-int/2addr v3, v4

    int-to-long v3, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_6
    and-int v2, v3, v4

    int-to-long v2, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->z()I

    move-result v4

    goto :goto_6

    :pswitch_7
    and-int v2, v3, v4

    int-to-long v3, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->x()Lcom/google/protobuf/ByteString;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_8
    invoke-virtual {v8, v1, v5, v9}, Lcom/google/protobuf/y8;->r(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r8;

    invoke-virtual {v8, v5}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v3

    invoke-interface {v0, v2, v3, v10}, Lcom/google/protobuf/t9;->t(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    :goto_5
    invoke-virtual {v8, v1, v5, v9, v2}, Lcom/google/protobuf/y8;->D(IILjava/lang/Object;Lcom/google/protobuf/r8;)V

    goto/16 :goto_b

    :pswitch_9
    invoke-static {v9, v3, v0}, Lcom/google/protobuf/y8;->y(Ljava/lang/Object;ILcom/google/protobuf/t9;)V

    goto :goto_a

    :pswitch_a
    and-int v2, v3, v4

    int-to-long v3, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->o()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_9

    :pswitch_b
    and-int v2, v3, v4

    int-to-long v2, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->n()I

    move-result v4

    goto :goto_6

    :pswitch_c
    and-int v2, v3, v4

    int-to-long v2, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->e()J

    move-result-wide v6

    goto :goto_8

    :pswitch_d
    and-int v2, v3, v4

    int-to-long v2, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->A()I

    move-result v4

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_7
    move-wide/from16 v18, v2

    move-object v2, v4

    move-wide/from16 v3, v18

    goto :goto_9

    :pswitch_e
    and-int v2, v3, v4

    int-to-long v2, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->c()J

    move-result-wide v6

    goto :goto_8

    :pswitch_f
    and-int v2, v3, v4

    int-to-long v2, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->G()J

    move-result-wide v6

    :goto_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_7

    :pswitch_10
    and-int v2, v3, v4

    int-to-long v3, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_9

    :pswitch_11
    and-int v2, v3, v4

    int-to-long v3, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_9
    invoke-static {v9, v3, v4, v2}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_a
    invoke-virtual {v8, v1, v5, v9}, Lcom/google/protobuf/y8;->B(IILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_12
    div-int/lit8 v1, v5, 0x3

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, v8, Lcom/google/protobuf/y8;->b:[Ljava/lang/Object;

    aget-object v4, v2, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/y8;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/t4;Lcom/google/protobuf/t9;)V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_20

    :pswitch_13
    and-int v1, v3, v4

    int-to-long v3, v1

    invoke-virtual {v8, v5}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/y8;->w(Ljava/lang/Object;JLcom/google/protobuf/t9;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    goto/16 :goto_b

    :pswitch_14
    and-int v2, v3, v4

    int-to-long v2, v2

    invoke-virtual {v6, v2, v3, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_c

    :pswitch_15
    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v12

    goto/16 :goto_10

    :pswitch_16
    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v12

    goto/16 :goto_11

    :pswitch_17
    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v12

    goto/16 :goto_12

    :pswitch_18
    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v12

    goto/16 :goto_13

    :pswitch_19
    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v12

    goto/16 :goto_14

    :pswitch_1a
    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v12

    goto/16 :goto_15

    :pswitch_1b
    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v12

    goto/16 :goto_16

    :pswitch_1c
    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v12

    goto/16 :goto_17

    :pswitch_1d
    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->h(Ljava/util/List;)V

    goto :goto_b

    :pswitch_1e
    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->a(Ljava/util/List;)V

    goto :goto_b

    :pswitch_1f
    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->F(Ljava/util/List;)V

    goto :goto_b

    :pswitch_20
    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->f(Ljava/util/List;)V

    :goto_b
    move-object/from16 v17, v12

    goto/16 :goto_1e

    :goto_c
    invoke-interface {v0, v2}, Lcom/google/protobuf/t9;->K(Ljava/util/List;)V

    invoke-virtual {v8, v5}, Lcom/google/protobuf/y8;->g(I)Lcom/google/protobuf/b7;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/aa;->a:Ljava/lang/Class;

    if-nez v3, :cond_7

    goto :goto_b

    :cond_7
    instance-of v4, v2, Ljava/util/RandomAccess;

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v5, v4, :cond_a

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v17, v12

    move-object v12, v3

    check-cast v12, Lcom/google/protobuf/o0;

    invoke-virtual {v12, v7}, Lcom/google/protobuf/o0;->a(I)Z

    move-result v12

    if-eqz v12, :cond_9

    if-eq v5, v6, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_9
    const/4 v12, 0x0

    invoke-static {v9, v1, v7, v12, v11}, Lcom/google/protobuf/aa;->A(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/kb;)V

    :goto_e
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, v17

    goto :goto_d

    :cond_a
    move-object/from16 v17, v12

    if-eq v6, v4, :cond_f

    invoke-interface {v2, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_1e

    :cond_b
    move-object/from16 v17, v12

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, v3

    check-cast v5, Lcom/google/protobuf/o0;

    invoke-virtual {v5, v4}, Lcom/google/protobuf/o0;->a(I)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x0

    invoke-static {v9, v1, v4, v5, v11}, Lcom/google/protobuf/aa;->A(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/kb;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :pswitch_21
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->k(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_22
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->C(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_23
    move-object/from16 v17, v12

    invoke-virtual {v8, v5}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/y8;->x(Ljava/lang/Object;ILcom/google/protobuf/t9;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    goto/16 :goto_1e

    :pswitch_24
    move-object/from16 v17, v12

    invoke-virtual {v8, v9, v3, v0}, Lcom/google/protobuf/y8;->z(Ljava/lang/Object;ILcom/google/protobuf/t9;)V

    goto/16 :goto_1e

    :pswitch_25
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_10
    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->l(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_26
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_11
    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->d(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_27
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_12
    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->I(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_28
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_13
    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->J(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_29
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_14
    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->v(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_2a
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_15
    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->E(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_2b
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_16
    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->y(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_2c
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_17
    invoke-interface {v0, v1}, Lcom/google/protobuf/t9;->D(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_2d
    move-object/from16 v17, v12

    invoke-virtual {v8, v5, v9}, Lcom/google/protobuf/y8;->q(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/r8;

    invoke-virtual {v8, v5}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v2

    invoke-interface {v0, v1, v2, v10}, Lcom/google/protobuf/t9;->m(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    goto/16 :goto_19

    :pswitch_2e
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->j()J

    move-result-wide v3

    goto/16 :goto_1b

    :pswitch_2f
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->g()I

    move-result v3

    goto/16 :goto_1a

    :pswitch_30
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->s()J

    move-result-wide v3

    goto/16 :goto_1b

    :pswitch_31
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->B()I

    move-result v3

    goto/16 :goto_1a

    :pswitch_32
    move-object/from16 v17, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->b()I

    move-result v2

    invoke-virtual {v8, v5}, Lcom/google/protobuf/y8;->g(I)Lcom/google/protobuf/b7;

    move-result-object v6

    if-eqz v6, :cond_e

    check-cast v6, Lcom/google/protobuf/o0;

    invoke-virtual {v6, v2}, Lcom/google/protobuf/o0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_18

    :cond_d
    const/4 v3, 0x0

    invoke-static {v9, v1, v2, v3, v11}, Lcom/google/protobuf/aa;->A(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/kb;)V

    goto/16 :goto_1e

    :cond_e
    :goto_18
    and-int v1, v3, v4

    int-to-long v3, v1

    invoke-static {v2, v3, v4, v9}, Lcom/google/protobuf/wb;->s(IJLjava/lang/Object;)V

    goto/16 :goto_1c

    :pswitch_33
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->z()I

    move-result v3

    goto :goto_1a

    :pswitch_34
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->x()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v9, v1, v2, v3}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1c

    :pswitch_35
    move-object/from16 v17, v12

    invoke-virtual {v8, v5, v9}, Lcom/google/protobuf/y8;->q(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/r8;

    invoke-virtual {v8, v5}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v2

    invoke-interface {v0, v1, v2, v10}, Lcom/google/protobuf/t9;->t(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    :goto_19
    invoke-virtual {v8, v5, v9, v1}, Lcom/google/protobuf/y8;->C(ILjava/lang/Object;Lcom/google/protobuf/r8;)V

    goto/16 :goto_1e

    :pswitch_36
    move-object/from16 v17, v12

    invoke-static {v9, v3, v0}, Lcom/google/protobuf/y8;->y(Ljava/lang/Object;ILcom/google/protobuf/t9;)V

    goto :goto_1c

    :pswitch_37
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->o()Z

    move-result v3

    sget-object v4, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    invoke-virtual {v4, v9, v1, v2, v3}, Lcom/google/protobuf/vb;->n(Ljava/lang/Object;JZ)V

    goto :goto_1c

    :pswitch_38
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->n()I

    move-result v3

    goto :goto_1a

    :pswitch_39
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->e()J

    move-result-wide v3

    goto :goto_1b

    :pswitch_3a
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->A()I

    move-result v3

    :goto_1a
    invoke-static {v3, v1, v2, v9}, Lcom/google/protobuf/wb;->s(IJLjava/lang/Object;)V

    goto :goto_1c

    :pswitch_3b
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->c()J

    move-result-wide v3

    goto :goto_1b

    :pswitch_3c
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->G()J

    move-result-wide v3

    :goto_1b
    invoke-static {v9, v1, v2, v3, v4}, Lcom/google/protobuf/wb;->t(Ljava/lang/Object;JJ)V

    goto :goto_1c

    :pswitch_3d
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->readFloat()F

    move-result v3

    sget-object v4, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    invoke-virtual {v4, v9, v1, v2, v3}, Lcom/google/protobuf/vb;->q(Ljava/lang/Object;JF)V

    :goto_1c
    move v12, v5

    goto :goto_1d

    :pswitch_3e
    move-object/from16 v17, v12

    and-int v1, v3, v4

    int-to-long v3, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/t9;->readDouble()D

    move-result-wide v6

    sget-object v1, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    move-object/from16 v2, p1

    move v12, v5

    move-wide v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/vb;->p(Ljava/lang/Object;JD)V

    :goto_1d
    invoke-virtual {v8, v12, v9}, Lcom/google/protobuf/y8;->A(ILjava/lang/Object;)V

    :cond_f
    :goto_1e
    move-object/from16 v12, v17

    goto/16 :goto_1

    :goto_1f
    move-object v0, v11

    check-cast v0, Lcom/google/protobuf/qb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v16
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_20
    if-ge v15, v14, :cond_10

    aget v3, v13, v15

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v11

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/y8;->f(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/kb;Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_20

    :cond_10
    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mutating immutable message: "

    invoke-static {v1, v9}, Landroidx/activity/b;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_14
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_21
        :pswitch_14
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 2

    iget-boolean v0, p0, Lcom/google/protobuf/y8;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y8;->j(Ljava/lang/Object;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/y8;->i(Ljava/lang/Object;)V

    throw v1
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/y8;->l:Lcom/google/protobuf/g9;

    iget-object p0, p0, Lcom/google/protobuf/y8;->e:Lcom/google/protobuf/r8;

    invoke-interface {v0, p0}, Lcom/google/protobuf/g9;->a(Lcom/google/protobuf/r8;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/kb;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/protobuf/y8;->a:[I

    aget v0, v0, p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/y8;->E(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/y8;->g(I)Lcom/google/protobuf/b7;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/y8;->p:Lcom/google/protobuf/i8;

    invoke-interface {v2, p1}, Lcom/google/protobuf/i8;->g(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    div-int/lit8 p2, p2, 0x3

    const/4 v3, 0x2

    mul-int/2addr p2, v3

    iget-object p0, p0, Lcom/google/protobuf/y8;->b:[Ljava/lang/Object;

    aget-object p0, p0, p2

    invoke-interface {v2, p0}, Lcom/google/protobuf/i8;->f(Ljava/lang/Object;)Lcom/google/protobuf/b8;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v4, v1

    check-cast v4, Lcom/google/protobuf/o0;

    invoke-virtual {v4, v2}, Lcom/google/protobuf/o0;->a(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v2, v4}, Lcom/google/protobuf/c8;->O(Lcom/google/protobuf/b8;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/a0;

    move-result-object v2

    iget-object v4, v2, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/l0;

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    iget-object v6, p0, Lcom/google/protobuf/b8;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v7, 0x1

    invoke-static {v4, v6, v7, v5}, Lcom/google/protobuf/j5;->w(Lcom/google/protobuf/n0;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    check-cast v5, Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static {v4, v5, v3, p2}, Lcom/google/protobuf/j5;->w(Lcom/google/protobuf/n0;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, v2, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/l0;

    invoke-virtual {p2}, Lcom/google/protobuf/l0;->T()I

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Lcom/google/protobuf/ByteString$LiteralByteString;

    iget-object v2, v2, Lcom/google/protobuf/a0;->b:[B

    invoke-direct {p2, v2}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    move-object v2, p4

    check-cast v2, Lcom/google/protobuf/qb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p3

    check-cast v2, Lcom/google/protobuf/pb;

    shl-int/lit8 v4, v0, 0x3

    or-int/2addr v4, v3

    invoke-virtual {v2, v4, p2}, Lcom/google/protobuf/pb;->a(ILjava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Did not write as much data as expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    check-cast p4, Lcom/google/protobuf/qb;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    return-void
.end method

.method public final g(I)Lcom/google/protobuf/b7;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/protobuf/y8;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/protobuf/b7;

    return-object p0
.end method

.method public final h(I)Lcom/google/protobuf/z9;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/y8;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/protobuf/z9;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/protobuf/q9;->c:Lcom/google/protobuf/q9;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/q9;->a(Ljava/lang/Class;)Lcom/google/protobuf/z9;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0xfffff

    move v5, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Lcom/google/protobuf/y8;->a:[I

    array-length v8, v7

    if-ge v4, v8, :cond_6

    invoke-virtual {v0, v4}, Lcom/google/protobuf/y8;->E(I)I

    move-result v8

    aget v9, v7, v4

    const/high16 v10, 0xff00000

    and-int/2addr v10, v8

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x11

    iget-boolean v12, v0, Lcom/google/protobuf/y8;->h:Z

    sget-object v13, Lcom/google/protobuf/y8;->r:Lsun/misc/Unsafe;

    if-gt v10, v11, :cond_0

    add-int/lit8 v11, v4, 0x2

    aget v7, v7, v11

    and-int v11, v7, v2

    ushr-int/lit8 v14, v7, 0x14

    const/4 v15, 0x1

    shl-int v14, v15, v14

    if-eq v11, v5, :cond_2

    int-to-long v5, v11

    invoke-virtual {v13, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v5, v11

    goto :goto_2

    :cond_0
    if-eqz v12, :cond_1

    sget-object v11, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    invoke-virtual {v11}, Lcom/google/protobuf/FieldType;->id()I

    move-result v11

    if-lt v10, v11, :cond_1

    sget-object v11, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    invoke-virtual {v11}, Lcom/google/protobuf/FieldType;->id()I

    move-result v11

    if-gt v10, v11, :cond_1

    add-int/lit8 v11, v4, 0x2

    aget v7, v7, v11

    and-int/2addr v7, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v14, 0x0

    :cond_2
    :goto_2
    and-int/2addr v8, v2

    int-to-long v2, v8

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_10

    :pswitch_0
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_8

    :pswitch_5
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_9

    :pswitch_8
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_a

    :pswitch_9
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/protobuf/ByteString;

    if-eqz v3, :cond_3

    goto/16 :goto_b

    :pswitch_a
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_c

    :pswitch_b
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_f

    :pswitch_c
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_f

    :pswitch_d
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_3
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/y8;->t(JLjava/lang/Object;)I

    goto/16 :goto_f

    :pswitch_e
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :pswitch_f
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_4
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/y8;->u(JLjava/lang/Object;)J

    goto/16 :goto_f

    :pswitch_10
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_f

    :pswitch_11
    invoke-virtual {v0, v9, v4, v1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_f

    :pswitch_12
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    div-int/lit8 v3, v4, 0x3

    mul-int/lit8 v3, v3, 0x2

    iget-object v7, v0, Lcom/google/protobuf/y8;->b:[Ljava/lang/Object;

    aget-object v3, v7, v3

    iget-object v7, v0, Lcom/google/protobuf/y8;->p:Lcom/google/protobuf/i8;

    invoke-interface {v7, v9, v2, v3}, Lcom/google/protobuf/i8;->c(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_10

    :pswitch_13
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v3

    invoke-static {v9, v2, v3}, Lcom/google/protobuf/aa;->j(ILjava/util/List;Lcom/google/protobuf/z9;)V

    goto/16 :goto_10

    :pswitch_14
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->t(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto/16 :goto_5

    :pswitch_15
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->r(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto/16 :goto_5

    :pswitch_16
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->i(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto/16 :goto_5

    :pswitch_17
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->g(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto/16 :goto_5

    :pswitch_18
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->e(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto/16 :goto_5

    :pswitch_19
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->w(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto/16 :goto_5

    :pswitch_1a
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->b(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto/16 :goto_5

    :pswitch_1b
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->g(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto :goto_5

    :pswitch_1c
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->i(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto :goto_5

    :pswitch_1d
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->l(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto :goto_5

    :pswitch_1e
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->y(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto :goto_5

    :pswitch_1f
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->n(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto :goto_5

    :pswitch_20
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->g(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    goto :goto_5

    :pswitch_21
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/aa;->i(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v12, :cond_4

    :goto_5
    int-to-long v7, v7

    invoke-virtual {v13, v1, v7, v8, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_f

    :pswitch_22
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lcom/google/protobuf/aa;->s(ILjava/util/List;)V

    goto/16 :goto_10

    :pswitch_23
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lcom/google/protobuf/aa;->q(ILjava/util/List;)V

    goto/16 :goto_10

    :pswitch_24
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lcom/google/protobuf/aa;->d(ILjava/util/List;)V

    goto/16 :goto_10

    :pswitch_25
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lcom/google/protobuf/aa;->v(ILjava/util/List;)V

    goto/16 :goto_10

    :pswitch_26
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, v9}, Lcom/google/protobuf/aa;->c(Ljava/util/List;I)V

    goto/16 :goto_10

    :pswitch_27
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v3

    invoke-static {v9, v2, v3}, Lcom/google/protobuf/aa;->p(ILjava/util/List;Lcom/google/protobuf/z9;)V

    goto/16 :goto_10

    :pswitch_28
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, v9}, Lcom/google/protobuf/aa;->u(Ljava/util/List;I)V

    goto/16 :goto_10

    :pswitch_29
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lcom/google/protobuf/aa;->a(ILjava/util/List;)V

    goto/16 :goto_10

    :pswitch_2a
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lcom/google/protobuf/aa;->k(ILjava/util/List;)V

    goto/16 :goto_10

    :pswitch_2b
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lcom/google/protobuf/aa;->x(ILjava/util/List;)V

    goto/16 :goto_10

    :pswitch_2c
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lcom/google/protobuf/aa;->m(ILjava/util/List;)V

    goto/16 :goto_10

    :pswitch_2d
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lcom/google/protobuf/aa;->f(ILjava/util/List;)V

    goto/16 :goto_10

    :pswitch_2e
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lcom/google/protobuf/aa;->h(ILjava/util/List;)V

    goto/16 :goto_10

    :pswitch_2f
    and-int v7, v6, v14

    if-eqz v7, :cond_5

    :goto_6
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r8;

    invoke-virtual {v0, v4}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v3

    invoke-static {v9, v2, v3}, Lcom/google/protobuf/n0;->k(ILcom/google/protobuf/r8;Lcom/google/protobuf/z9;)I

    goto/16 :goto_10

    :pswitch_30
    and-int v7, v6, v14

    if-eqz v7, :cond_5

    goto/16 :goto_e

    :pswitch_31
    and-int v7, v6, v14

    if-eqz v7, :cond_5

    goto :goto_d

    :pswitch_32
    and-int v2, v6, v14

    if-eqz v2, :cond_5

    :goto_7
    goto/16 :goto_f

    :pswitch_33
    and-int v2, v6, v14

    if-eqz v2, :cond_5

    :goto_8
    goto/16 :goto_f

    :pswitch_34
    and-int v7, v6, v14

    if-eqz v7, :cond_5

    goto :goto_d

    :pswitch_35
    and-int v7, v6, v14

    if-eqz v7, :cond_5

    goto :goto_d

    :pswitch_36
    and-int v7, v6, v14

    if-eqz v7, :cond_5

    :goto_9
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b

    :pswitch_37
    and-int v7, v6, v14

    if-eqz v7, :cond_5

    :goto_a
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v3

    invoke-static {v9, v2, v3}, Lcom/google/protobuf/aa;->o(ILjava/lang/Object;Lcom/google/protobuf/z9;)V

    goto :goto_10

    :pswitch_38
    and-int v7, v6, v14

    if-eqz v7, :cond_5

    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/protobuf/ByteString;

    if-eqz v3, :cond_3

    :goto_b
    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v9, v2}, Lcom/google/protobuf/n0;->d(ILcom/google/protobuf/ByteString;)I

    goto :goto_10

    :cond_3
    check-cast v2, Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/google/protobuf/n0;->p(ILjava/lang/String;)I

    goto :goto_10

    :pswitch_39
    and-int v2, v6, v14

    if-eqz v2, :cond_5

    :goto_c
    goto :goto_f

    :pswitch_3a
    and-int v2, v6, v14

    if-eqz v2, :cond_5

    goto :goto_f

    :pswitch_3b
    and-int v2, v6, v14

    if-eqz v2, :cond_5

    goto :goto_f

    :pswitch_3c
    and-int v7, v6, v14

    if-eqz v7, :cond_5

    :goto_d
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    goto :goto_f

    :pswitch_3d
    and-int v7, v6, v14

    if-eqz v7, :cond_5

    goto :goto_e

    :pswitch_3e
    and-int v7, v6, v14

    if-eqz v7, :cond_5

    :goto_e
    invoke-virtual {v13, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    goto :goto_f

    :pswitch_3f
    and-int v2, v6, v14

    if-eqz v2, :cond_5

    goto :goto_f

    :pswitch_40
    and-int v2, v6, v14

    if-eqz v2, :cond_5

    :cond_4
    :goto_f
    sget-object v2, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    :cond_5
    :goto_10
    add-int/lit8 v4, v4, 0x3

    const v2, 0xfffff

    goto/16 :goto_0

    :cond_6
    iget-object v0, v0, Lcom/google/protobuf/y8;->n:Lcom/google/protobuf/kb;

    check-cast v0, Lcom/google/protobuf/qb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2e
        :pswitch_2d
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_2d
        :pswitch_2e
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/y8;->a:[I

    array-length v3, v2

    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/protobuf/y8;->E(I)I

    move-result v3

    const/high16 v4, 0xff00000

    and-int/2addr v4, v3

    ushr-int/lit8 v4, v4, 0x14

    aget v5, v2, v1

    const v6, 0xfffff

    and-int/2addr v3, v6

    int-to-long v7, v3

    sget-object v3, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    invoke-virtual {v3}, Lcom/google/protobuf/FieldType;->id()I

    move-result v3

    if-lt v4, v3, :cond_0

    sget-object v3, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    invoke-virtual {v3}, Lcom/google/protobuf/FieldType;->id()I

    move-result v3

    if-gt v4, v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    and-int/2addr v2, v6

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    iget-boolean v3, p0, Lcom/google/protobuf/y8;->h:Z

    sget-object v6, Lcom/google/protobuf/y8;->r:Lsun/misc/Unsafe;

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->u(JLjava/lang/Object;)J

    goto/16 :goto_11

    :pswitch_2
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_3
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->t(JLjava/lang/Object;)I

    goto/16 :goto_11

    :pswitch_3
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_8

    :pswitch_4
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_9

    :pswitch_5
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :pswitch_6
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :pswitch_7
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_a

    :pswitch_8
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_b

    :pswitch_9
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/protobuf/ByteString;

    if-eqz v3, :cond_1

    goto/16 :goto_c

    :pswitch_a
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_d

    :pswitch_b
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_e

    :pswitch_c
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_f

    :pswitch_d
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :pswitch_e
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :pswitch_f
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :pswitch_10
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_10

    :pswitch_11
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_11

    :pswitch_12
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    div-int/lit8 v3, v1, 0x3

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/google/protobuf/y8;->b:[Ljava/lang/Object;

    aget-object v3, v4, v3

    iget-object v4, p0, Lcom/google/protobuf/y8;->p:Lcom/google/protobuf/i8;

    invoke-interface {v4, v5, v2, v3}, Lcom/google/protobuf/i8;->c(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_12

    :pswitch_13
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/aa;->j(ILjava/util/List;Lcom/google/protobuf/z9;)V

    goto/16 :goto_12

    :pswitch_14
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->t(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :pswitch_15
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->r(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :pswitch_16
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :pswitch_17
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :pswitch_18
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :pswitch_19
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->w(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :pswitch_1a
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :pswitch_1b
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_4

    :pswitch_1c
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_4

    :pswitch_1d
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->l(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_4

    :pswitch_1e
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->y(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_4

    :pswitch_1f
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->n(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_4

    :pswitch_20
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_4

    :pswitch_21
    invoke-virtual {v6, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/aa;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    :goto_4
    int-to-long v2, v2

    invoke-virtual {v6, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_11

    :pswitch_22
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/aa;->s(ILjava/util/List;)V

    goto/16 :goto_12

    :pswitch_23
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/aa;->q(ILjava/util/List;)V

    goto/16 :goto_12

    :pswitch_24
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/aa;->d(ILjava/util/List;)V

    goto/16 :goto_12

    :pswitch_25
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/aa;->v(ILjava/util/List;)V

    goto/16 :goto_12

    :pswitch_26
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/google/protobuf/aa;->c(Ljava/util/List;I)V

    goto/16 :goto_12

    :pswitch_27
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/aa;->p(ILjava/util/List;Lcom/google/protobuf/z9;)V

    goto/16 :goto_12

    :pswitch_28
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/google/protobuf/aa;->u(Ljava/util/List;I)V

    goto/16 :goto_12

    :pswitch_29
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/aa;->a(ILjava/util/List;)V

    goto/16 :goto_12

    :pswitch_2a
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/aa;->k(ILjava/util/List;)V

    goto/16 :goto_12

    :pswitch_2b
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/aa;->x(ILjava/util/List;)V

    goto/16 :goto_12

    :pswitch_2c
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/aa;->m(ILjava/util/List;)V

    goto/16 :goto_12

    :pswitch_2d
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/aa;->f(ILjava/util/List;)V

    goto/16 :goto_12

    :pswitch_2e
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/y8;->m(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/aa;->h(ILjava/util/List;)V

    goto/16 :goto_12

    :pswitch_2f
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_5
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r8;

    invoke-virtual {p0, v1}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/n0;->k(ILcom/google/protobuf/r8;Lcom/google/protobuf/z9;)I

    goto/16 :goto_12

    :pswitch_30
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_6
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/wb;->l(Ljava/lang/Object;J)J

    goto/16 :goto_11

    :pswitch_31
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_7
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/wb;->k(Ljava/lang/Object;J)I

    goto/16 :goto_11

    :pswitch_32
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_8
    goto/16 :goto_11

    :pswitch_33
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_9
    goto/16 :goto_11

    :pswitch_34
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_7

    :pswitch_35
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_7

    :pswitch_36
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_a
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_c

    :pswitch_37
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_b
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/aa;->o(ILjava/lang/Object;Lcom/google/protobuf/z9;)V

    goto :goto_12

    :pswitch_38
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/protobuf/ByteString;

    if-eqz v3, :cond_1

    :goto_c
    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/n0;->d(ILcom/google/protobuf/ByteString;)I

    goto :goto_12

    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/google/protobuf/n0;->p(ILjava/lang/String;)I

    goto :goto_12

    :pswitch_39
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_d
    goto :goto_11

    :pswitch_3a
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_e
    goto :goto_11

    :pswitch_3b
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_f
    goto :goto_11

    :pswitch_3c
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_7

    :pswitch_3d
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    :pswitch_3e
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    :pswitch_3f
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_10
    goto :goto_11

    :pswitch_40
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_11
    sget-object v2, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    :cond_3
    :goto_12
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Lcom/google/protobuf/y8;->n:Lcom/google/protobuf/kb;

    check-cast p0, Lcom/google/protobuf/qb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2e
        :pswitch_2d
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_2d
        :pswitch_2e
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/protobuf/y8;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_11

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y8;->E(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    const/high16 p1, 0xff00000

    and-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x14

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move v5, v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->l(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    move v5, v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->k(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_2

    move v5, v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->l(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    move v5, v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->k(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_4

    move v5, v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->k(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_5

    move v5, v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->k(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_6

    move v5, v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    xor-int/2addr p0, v6

    return p0

    :pswitch_8
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    move v5, v6

    :cond_7
    return v5

    :pswitch_9
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_8

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    goto :goto_0

    :cond_8
    instance-of p1, p0, Lcom/google/protobuf/ByteString;

    if-eqz p1, :cond_9

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    sget-object p0, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/vb;->d(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->k(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_a

    move v5, v6

    :cond_a
    return v5

    :pswitch_c
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->l(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_b

    move v5, v6

    :cond_b
    return v5

    :pswitch_d
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->k(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_c

    move v5, v6

    :cond_c
    return v5

    :pswitch_e
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->l(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_d

    move v5, v6

    :cond_d
    return v5

    :pswitch_f
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/wb;->l(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    move v5, v6

    :cond_e
    return v5

    :pswitch_10
    sget-object p0, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/vb;->h(JLjava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_f

    move v5, v6

    :cond_f
    return v5

    :pswitch_11
    sget-object p0, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/vb;->g(JLjava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    move v5, v6

    :cond_10
    return v5

    :cond_11
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {p2, v2, v3}, Lcom/google/protobuf/wb;->k(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    move v5, v6

    :cond_12
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/protobuf/y8;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p3, v0, v1}, Lcom/google/protobuf/wb;->k(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/t4;Lcom/google/protobuf/t9;)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/protobuf/y8;->E(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/wb;->m(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lcom/google/protobuf/y8;->p:Lcom/google/protobuf/i8;

    if-nez p2, :cond_0

    invoke-interface {p0, p3}, Lcom/google/protobuf/i8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lcom/google/protobuf/i8;->d(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, p3}, Lcom/google/protobuf/i8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Lcom/google/protobuf/i8;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/wb;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v2

    :cond_1
    :goto_0
    invoke-interface {p0, p2}, Lcom/google/protobuf/i8;->g(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p3}, Lcom/google/protobuf/i8;->f(Ljava/lang/Object;)Lcom/google/protobuf/b8;

    move-result-object p0

    invoke-interface {p5, p1, p0, p4}, Lcom/google/protobuf/t9;->u(Ljava/util/Map;Lcom/google/protobuf/b8;Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public final o(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/y8;->E(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/y8;->r:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p3}, Lcom/google/protobuf/z9;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Lcom/google/protobuf/z9;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y8;->A(ILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    if-nez p1, :cond_3

    invoke-interface {p3}, Lcom/google/protobuf/z9;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/google/protobuf/z9;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v3}, Lcom/google/protobuf/z9;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/protobuf/y8;->a:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final p(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/protobuf/y8;->a:[I

    aget v1, v0, p1

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/y8;->E(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Lcom/google/protobuf/y8;->r:Lsun/misc/Unsafe;

    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object p3

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p3}, Lcom/google/protobuf/z9;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, v5}, Lcom/google/protobuf/z9;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/protobuf/y8;->B(IILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    if-nez p1, :cond_3

    invoke-interface {p3}, Lcom/google/protobuf/z9;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/google/protobuf/z9;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v5}, Lcom/google/protobuf/z9;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y8;->E(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y8;->k(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/z9;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/protobuf/y8;->r:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    invoke-interface {v0}, Lcom/google/protobuf/z9;->e()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_3

    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/z9;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object p1
.end method

.method public final r(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/y8;->h(I)Lcom/google/protobuf/z9;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/y8;->l(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/z9;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/y8;->E(I)I

    move-result p0

    const p1, 0xfffff

    and-int/2addr p0, p1

    int-to-long p0, p0

    sget-object p2, Lcom/google/protobuf/y8;->r:Lsun/misc/Unsafe;

    invoke-virtual {p2, p3, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    invoke-interface {v0}, Lcom/google/protobuf/z9;->e()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_3

    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/z9;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object p1
.end method

.method public final v(I)I
    .locals 6

    iget v0, p0, Lcom/google/protobuf/y8;->c:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/google/protobuf/y8;->d:I

    if-gt p1, v0, :cond_2

    iget-object p0, p0, Lcom/google/protobuf/y8;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v0, :cond_2

    add-int v3, v0, v2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, p0, v4

    if-ne p1, v5, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final w(Ljava/lang/Object;JLcom/google/protobuf/t9;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/y8;->m:Lcom/google/protobuf/p7;

    invoke-virtual {p0, p2, p3, p1}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p4, p0, p5, p6}, Lcom/google/protobuf/t9;->i(Ljava/util/List;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public final x(Ljava/lang/Object;ILcom/google/protobuf/t9;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V
    .locals 2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    iget-object p0, p0, Lcom/google/protobuf/y8;->m:Lcom/google/protobuf/p7;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p3, p0, p4, p5}, Lcom/google/protobuf/t9;->p(Ljava/util/List;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public final z(Ljava/lang/Object;ILcom/google/protobuf/t9;)V
    .locals 2

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xfffff

    iget-object p0, p0, Lcom/google/protobuf/y8;->m:Lcom/google/protobuf/p7;

    and-int/2addr p2, v1

    if-eqz v0, :cond_1

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/google/protobuf/t9;->w(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/protobuf/p7;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/google/protobuf/t9;->r(Ljava/util/List;)V

    :goto_1
    return-void
.end method
