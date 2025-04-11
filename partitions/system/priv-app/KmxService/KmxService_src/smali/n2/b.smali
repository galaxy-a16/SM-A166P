.class public final Ln2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# static fields
.field public static final a:Ln2/b;

.field public static final b:Lc5/b;

.field public static final c:Lc5/b;

.field public static final d:Lc5/b;

.field public static final e:Lc5/b;

.field public static final f:Lc5/b;

.field public static final g:Lc5/b;

.field public static final h:Lc5/b;

.field public static final i:Lc5/b;

.field public static final j:Lc5/b;

.field public static final k:Lc5/b;

.field public static final l:Lc5/b;

.field public static final m:Lc5/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln2/b;

    invoke-direct {v0}, Ln2/b;-><init>()V

    sput-object v0, Ln2/b;->a:Ln2/b;

    const-string v0, "sdkVersion"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/b;->b:Lc5/b;

    const-string v0, "model"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/b;->c:Lc5/b;

    const-string v0, "hardware"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/b;->d:Lc5/b;

    const-string v0, "device"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/b;->e:Lc5/b;

    const-string v0, "product"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/b;->f:Lc5/b;

    const-string v0, "osBuild"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/b;->g:Lc5/b;

    const-string v0, "manufacturer"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/b;->h:Lc5/b;

    const-string v0, "fingerprint"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/b;->i:Lc5/b;

    const-string v0, "locale"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/b;->j:Lc5/b;

    const-string v0, "country"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/b;->k:Lc5/b;

    const-string v0, "mccMnc"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/b;->l:Lc5/b;

    const-string v0, "applicationBuild"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/b;->m:Lc5/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ln2/a;

    check-cast p2, Lc5/d;

    check-cast p1, Ln2/i;

    iget-object p0, p1, Ln2/i;->a:Ljava/lang/Integer;

    sget-object v0, Ln2/b;->b:Lc5/b;

    invoke-interface {p2, v0, p0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    iget-object p0, p1, Ln2/i;->b:Ljava/lang/String;

    sget-object v0, Ln2/b;->c:Lc5/b;

    invoke-interface {p2, v0, p0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/b;->d:Lc5/b;

    iget-object v0, p1, Ln2/i;->c:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/b;->e:Lc5/b;

    iget-object v0, p1, Ln2/i;->d:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/b;->f:Lc5/b;

    iget-object v0, p1, Ln2/i;->e:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/b;->g:Lc5/b;

    iget-object v0, p1, Ln2/i;->f:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/b;->h:Lc5/b;

    iget-object v0, p1, Ln2/i;->g:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/b;->i:Lc5/b;

    iget-object v0, p1, Ln2/i;->h:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/b;->j:Lc5/b;

    iget-object v0, p1, Ln2/i;->i:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/b;->k:Lc5/b;

    iget-object v0, p1, Ln2/i;->j:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/b;->l:Lc5/b;

    iget-object v0, p1, Ln2/i;->k:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/b;->m:Lc5/b;

    iget-object p1, p1, Ln2/i;->l:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    return-void
.end method
