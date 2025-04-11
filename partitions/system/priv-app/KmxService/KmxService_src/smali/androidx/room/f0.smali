.class public abstract Landroidx/room/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final database:Landroidx/room/RoomDatabase;

.field private final lock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final stmt$delegate:Lkotlin/f;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/f0;->database:Landroidx/room/RoomDatabase;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/f0;->lock:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Landroidx/room/SharedSQLiteStatement$stmt$2;

    invoke-direct {p1, p0}, Landroidx/room/SharedSQLiteStatement$stmt$2;-><init>(Landroidx/room/f0;)V

    invoke-static {p1}, Lkotlin/h;->d(Lvb/a;)Lkotlin/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/f0;->stmt$delegate:Lkotlin/f;

    return-void
.end method

.method public static final access$createNewStatement(Landroidx/room/f0;)La1/i;
    .locals 1

    invoke-virtual {p0}, Landroidx/room/f0;->createQuery()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/f0;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)La1/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public acquire()La1/i;
    .locals 3

    invoke-virtual {p0}, Landroidx/room/f0;->assertNotMainThread()V

    iget-object v0, p0, Landroidx/room/f0;->lock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/room/f0;->stmt$delegate:Lkotlin/f;

    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La1/i;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/room/f0;->createQuery()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/f0;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)La1/i;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public assertNotMainThread()V
    .locals 0

    iget-object p0, p0, Landroidx/room/f0;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    return-void
.end method

.method public abstract createQuery()Ljava/lang/String;
.end method

.method public release(La1/i;)V
    .locals 1

    const-string v0, "statement"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/f0;->stmt$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La1/i;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/room/f0;->lock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
