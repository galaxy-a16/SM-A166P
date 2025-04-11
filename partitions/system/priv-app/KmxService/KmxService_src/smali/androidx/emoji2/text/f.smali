.class public final Landroidx/emoji2/text/f;
.super Lv4/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:Landroidx/emoji2/text/g;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/g;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/text/f;->c:Landroidx/emoji2/text/g;

    invoke-direct {p0}, Lv4/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final R(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/f;->c:Landroidx/emoji2/text/g;

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/l;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/l;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final S(Lp1/i;)V
    .locals 4

    iget-object p0, p0, Landroidx/emoji2/text/f;->c:Landroidx/emoji2/text/g;

    iput-object p1, p0, Landroidx/emoji2/text/g;->e:Lp1/i;

    new-instance p1, Landroidx/emoji2/text/t;

    iget-object v0, p0, Landroidx/emoji2/text/g;->e:Lp1/i;

    new-instance v1, Ll4/e;

    invoke-direct {v1}, Ll4/e;-><init>()V

    iget-object v2, p0, Lp5/c;->b:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroidx/emoji2/text/l;

    iget-object v3, v3, Landroidx/emoji2/text/l;->h:Landroidx/emoji2/text/e;

    check-cast v2, Landroidx/emoji2/text/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0, v1, v3}, Landroidx/emoji2/text/t;-><init>(Lp1/i;Ll4/e;Landroidx/emoji2/text/e;)V

    iput-object p1, p0, Landroidx/emoji2/text/g;->d:Landroidx/emoji2/text/t;

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/l;

    invoke-virtual {p0}, Landroidx/emoji2/text/l;->e()V

    return-void
.end method
