.class public Lv7/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ld/g0;

.field public b:Ld/g0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ld/g0;)V
    .locals 1

    iget-object v0, p0, Lv7/w;->b:Ld/g0;

    if-nez v0, :cond_0

    iput-object p1, p0, Lv7/w;->b:Ld/g0;

    iput-object p1, p0, Lv7/w;->a:Ld/g0;

    goto :goto_0

    :cond_0
    iput-object p1, v0, Ld/g0;->b:Ljava/lang/Object;

    iput-object v0, p1, Ld/g0;->a:Ljava/lang/Object;

    iput-object p1, p0, Lv7/w;->b:Ld/g0;

    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lv7/w;->a:Ld/g0;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Ld/g0;)V
    .locals 1

    iget-object v0, p1, Ld/g0;->a:Ljava/lang/Object;

    check-cast v0, Ld/g0;

    iget-object p1, p1, Ld/g0;->b:Ljava/lang/Object;

    check-cast p1, Ld/g0;

    if-nez v0, :cond_0

    iput-object p1, p0, Lv7/w;->a:Ld/g0;

    goto :goto_0

    :cond_0
    iput-object p1, v0, Ld/g0;->b:Ljava/lang/Object;

    :goto_0
    if-nez p1, :cond_1

    iput-object v0, p0, Lv7/w;->b:Ld/g0;

    goto :goto_1

    :cond_1
    iput-object v0, p1, Ld/g0;->a:Ljava/lang/Object;

    :goto_1
    return-void
.end method
