.class public final Lp1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Lp1/i;


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lp1/i;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp1/i;->b:Ljava/lang/Object;

    iput-object p1, p0, Lp1/i;->c:Ljava/lang/Object;

    const-string p1, ""

    iput-object p1, p0, Lp1/i;->d:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/i;->a:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lz2/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lz2/h;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lp1/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/b;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/i;->d:Ljava/lang/Object;

    iput-object p2, p0, Lp1/i;->a:Ljava/lang/Object;

    new-instance p1, Landroidx/emoji2/text/x;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Landroidx/emoji2/text/x;-><init>(I)V

    iput-object p1, p0, Lp1/i;->c:Ljava/lang/Object;

    iget-object p1, p0, Lp1/i;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/emoji2/text/flatbuffer/b;

    const/4 p2, 0x6

    .line 3
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/flatbuffer/c;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget v2, p1, Landroidx/emoji2/text/flatbuffer/c;->a:I

    add-int/2addr v0, v2

    iget-object v2, p1, Landroidx/emoji2/text/flatbuffer/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    iget-object p1, p1, Landroidx/emoji2/text/flatbuffer/c;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    mul-int/lit8 p1, p1, 0x2

    .line 5
    new-array p1, p1, [C

    iput-object p1, p0, Lp1/i;->b:Ljava/lang/Object;

    iget-object p1, p0, Lp1/i;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/emoji2/text/flatbuffer/b;

    .line 6
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/flatbuffer/c;->a(I)I

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    iget v0, p1, Landroidx/emoji2/text/flatbuffer/c;->a:I

    add-int/2addr p2, v0

    iget-object v0, p1, Landroidx/emoji2/text/flatbuffer/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object p1, p1, Landroidx/emoji2/text/flatbuffer/c;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_4

    .line 8
    new-instance v0, Landroidx/emoji2/text/r;

    invoke-direct {v0, p0, p2}, Landroidx/emoji2/text/r;-><init>(Lp1/i;I)V

    .line 9
    invoke-virtual {v0}, Landroidx/emoji2/text/r;->c()Landroidx/emoji2/text/flatbuffer/a;

    move-result-object v2

    const/4 v3, 0x4

    .line 10
    invoke-virtual {v2, v3}, Landroidx/emoji2/text/flatbuffer/c;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, Landroidx/emoji2/text/flatbuffer/c;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, Landroidx/emoji2/text/flatbuffer/c;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    .line 11
    :goto_3
    iget-object v3, p0, Lp1/i;->b:Ljava/lang/Object;

    check-cast v3, [C

    mul-int/lit8 v4, p2, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    .line 12
    invoke-virtual {v0}, Landroidx/emoji2/text/r;->b()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_4

    :cond_3
    move v2, v1

    :goto_4
    const-string v4, "invalid metadata codepoint length"

    invoke-static {v4, v2}, Lkotlinx/coroutines/a0;->a(Ljava/lang/String;Z)V

    iget-object v2, p0, Lp1/i;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/emoji2/text/x;

    invoke-virtual {v0}, Landroidx/emoji2/text/r;->b()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v0, v1, v4}, Landroidx/emoji2/text/x;->a(Landroidx/emoji2/text/r;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/i;->a:Ljava/lang/Object;

    new-instance v0, Lp1/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lp1/b;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lp1/i;->b:Ljava/lang/Object;

    new-instance v0, Lp1/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lp1/h;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lp1/i;->c:Ljava/lang/Object;

    new-instance v0, Lp1/h;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lp1/h;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lp1/i;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le7/b;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lf7/a;->f:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    iput-object v0, p0, Lp1/i;->b:Ljava/lang/Object;

    sget-object v0, Lf6/h;->c:Lf6/h;

    iput-object v0, p0, Lp1/i;->d:Ljava/lang/Object;

    iput-object p1, p0, Lp1/i;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lp1/j;)Lp1/g;
    .locals 5

    const-string v0, "id"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    iget-object v2, p1, Lp1/j;->a:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Landroidx/room/d0;->A(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v2}, Landroidx/room/d0;->r(ILjava/lang/String;)V

    :goto_0
    iget p1, p1, Lp1/j;->b:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/d0;->W(IJ)V

    iget-object p1, p0, Lp1/i;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lp1/i;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "work_spec_id"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v1, "generation"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "system_id"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Lp1/g;

    invoke-direct {v2, v4, p1, v1}, Lp1/g;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object v4

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw p1
.end method

.method public final b(Lp1/g;)V
    .locals 1

    iget-object v0, p0, Lp1/i;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lp1/i;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lp1/i;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/g;

    invoke-virtual {v0, p1}, Landroidx/room/g;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lp1/i;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lp1/i;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lp1/i;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
