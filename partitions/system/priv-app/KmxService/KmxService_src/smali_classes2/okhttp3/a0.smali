.class public final Lokhttp3/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La5/b;

.field public final b:Lxa/d;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lac/a;

.field public final f:Z

.field public final g:Le9/a;

.field public final h:Z

.field public final i:Z

.field public final j:Ll4/e;

.field public final k:Lc3/l;

.field public final l:Le9/a;

.field public final m:Ljavax/net/SocketFactory;

.field public final n:Ljava/util/List;

.field public final o:Ljava/util/List;

.field public final p:Lic/c;

.field public final q:Lokhttp3/g;

.field public final r:I

.field public final s:I

.field public final t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La5/b;

    invoke-direct {v0}, La5/b;-><init>()V

    iput-object v0, p0, Lokhttp3/a0;->a:La5/b;

    new-instance v0, Lxa/d;

    invoke-direct {v0}, Lxa/d;-><init>()V

    iput-object v0, p0, Lokhttp3/a0;->b:Lxa/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/a0;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/a0;->d:Ljava/util/ArrayList;

    new-instance v0, Lac/a;

    invoke-direct {v0}, Lac/a;-><init>()V

    iput-object v0, p0, Lokhttp3/a0;->e:Lac/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/a0;->f:Z

    sget-object v1, Lokhttp3/b;->i0:Le9/a;

    iput-object v1, p0, Lokhttp3/a0;->g:Le9/a;

    iput-boolean v0, p0, Lokhttp3/a0;->h:Z

    iput-boolean v0, p0, Lokhttp3/a0;->i:Z

    sget-object v0, Lokhttp3/l;->j0:Ll4/e;

    iput-object v0, p0, Lokhttp3/a0;->j:Ll4/e;

    sget-object v0, Lokhttp3/m;->k0:Lc3/l;

    iput-object v0, p0, Lokhttp3/a0;->k:Lc3/l;

    iput-object v1, p0, Lokhttp3/a0;->l:Le9/a;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "SocketFactory.getDefault()"

    invoke-static {v0, v1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/a0;->m:Ljavax/net/SocketFactory;

    sget-object v0, Lokhttp3/b0;->E:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/a0;->n:Ljava/util/List;

    sget-object v0, Lokhttp3/b0;->C:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/a0;->o:Ljava/util/List;

    sget-object v0, Lic/c;->a:Lic/c;

    iput-object v0, p0, Lokhttp3/a0;->p:Lic/c;

    sget-object v0, Lokhttp3/g;->c:Lokhttp3/g;

    iput-object v0, p0, Lokhttp3/a0;->q:Lokhttp3/g;

    const/16 v0, 0x2710

    iput v0, p0, Lokhttp3/a0;->r:I

    iput v0, p0, Lokhttp3/a0;->s:I

    iput v0, p0, Lokhttp3/a0;->t:I

    return-void
.end method
