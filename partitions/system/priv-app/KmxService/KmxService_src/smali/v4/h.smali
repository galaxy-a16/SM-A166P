.class public final Lv4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/f;


# static fields
.field public static final b:Lv4/h;

.field public static final c:Lv4/h;

.field public static final d:Lv4/h;

.field public static final e:Lv4/h;

.field public static final f:Lv4/h;

.field public static final g:Lv4/h;

.field public static final h:Lv4/h;

.field public static final i:Lv4/h;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lv4/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv4/h;-><init>(I)V

    sput-object v0, Lv4/h;->b:Lv4/h;

    new-instance v0, Lv4/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv4/h;-><init>(I)V

    sput-object v0, Lv4/h;->c:Lv4/h;

    new-instance v0, Lv4/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lv4/h;-><init>(I)V

    sput-object v0, Lv4/h;->d:Lv4/h;

    new-instance v0, Lv4/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lv4/h;-><init>(I)V

    sput-object v0, Lv4/h;->e:Lv4/h;

    new-instance v0, Lv4/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lv4/h;-><init>(I)V

    sput-object v0, Lv4/h;->f:Lv4/h;

    new-instance v0, Lv4/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lv4/h;-><init>(I)V

    sput-object v0, Lv4/h;->g:Lv4/h;

    new-instance v0, Lv4/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lv4/h;-><init>(I)V

    sput-object v0, Lv4/h;->h:Lv4/h;

    new-instance v0, Lv4/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lv4/h;-><init>(I)V

    sput-object v0, Lv4/h;->i:Lv4/h;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lv4/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln2/l;)Lkotlinx/coroutines/t0;
    .locals 6

    iget p0, p0, Lv4/h;->a:I

    const-class v0, Lz4/d;

    const-class v1, Lz4/b;

    const-class v2, Lz4/c;

    const-class v3, Lz4/a;

    const-string v4, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    const-class v5, Ljava/util/concurrent/Executor;

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance p0, La5/r;

    invoke-direct {p0, v1, v5}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Ln2/l;->d(La5/r;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance p1, Lkotlinx/coroutines/t0;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/t0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object p1

    :pswitch_1
    new-instance p0, La5/r;

    invoke-direct {p0, v2, v5}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Ln2/l;->d(La5/r;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance p1, Lkotlinx/coroutines/t0;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/t0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object p1

    :pswitch_2
    new-instance p0, La5/r;

    invoke-direct {p0, v3, v5}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Ln2/l;->d(La5/r;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance p1, Lkotlinx/coroutines/t0;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/t0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object p1

    :pswitch_3
    new-instance p0, La5/r;

    invoke-direct {p0, v0, v5}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Ln2/l;->d(La5/r;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance p1, Lkotlinx/coroutines/t0;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/t0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object p1

    :pswitch_4
    new-instance p0, La5/r;

    invoke-direct {p0, v1, v5}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Ln2/l;->d(La5/r;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance p1, Lkotlinx/coroutines/t0;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/t0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object p1

    :pswitch_5
    new-instance p0, La5/r;

    invoke-direct {p0, v2, v5}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Ln2/l;->d(La5/r;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance p1, Lkotlinx/coroutines/t0;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/t0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object p1

    :pswitch_6
    new-instance p0, La5/r;

    invoke-direct {p0, v3, v5}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Ln2/l;->d(La5/r;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance p1, Lkotlinx/coroutines/t0;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/t0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object p1

    :goto_0
    new-instance p0, La5/r;

    invoke-direct {p0, v0, v5}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Ln2/l;->d(La5/r;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance p1, Lkotlinx/coroutines/t0;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/t0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic f(Ln2/l;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lv4/h;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lv4/h;->a(Ln2/l;)Lkotlinx/coroutines/t0;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lv4/h;->a(Ln2/l;)Lkotlinx/coroutines/t0;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lv4/h;->a(Ln2/l;)Lkotlinx/coroutines/t0;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lv4/h;->a(Ln2/l;)Lkotlinx/coroutines/t0;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lv4/h;->a(Ln2/l;)Lkotlinx/coroutines/t0;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lv4/h;->a(Ln2/l;)Lkotlinx/coroutines/t0;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lv4/h;->a(Ln2/l;)Lkotlinx/coroutines/t0;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0, p1}, Lv4/h;->a(Ln2/l;)Lkotlinx/coroutines/t0;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
