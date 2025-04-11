.class public final Ln2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# static fields
.field public static final a:Ln2/f;

.field public static final b:Lc5/b;

.field public static final c:Lc5/b;

.field public static final d:Lc5/b;

.field public static final e:Lc5/b;

.field public static final f:Lc5/b;

.field public static final g:Lc5/b;

.field public static final h:Lc5/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln2/f;

    invoke-direct {v0}, Ln2/f;-><init>()V

    sput-object v0, Ln2/f;->a:Ln2/f;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/f;->b:Lc5/b;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/f;->c:Lc5/b;

    const-string v0, "clientInfo"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/f;->d:Lc5/b;

    const-string v0, "logSource"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/f;->e:Lc5/b;

    const-string v0, "logSourceName"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/f;->f:Lc5/b;

    const-string v0, "logEvent"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/f;->g:Lc5/b;

    const-string v0, "qosTier"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/f;->h:Lc5/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ln2/t;

    check-cast p2, Lc5/d;

    check-cast p1, Ln2/n;

    iget-wide v0, p1, Ln2/n;->a:J

    sget-object p0, Ln2/f;->b:Lc5/b;

    invoke-interface {p2, p0, v0, v1}, Lc5/d;->b(Lc5/b;J)Lc5/d;

    iget-wide v0, p1, Ln2/n;->b:J

    sget-object p0, Ln2/f;->c:Lc5/b;

    invoke-interface {p2, p0, v0, v1}, Lc5/d;->b(Lc5/b;J)Lc5/d;

    sget-object p0, Ln2/f;->d:Lc5/b;

    iget-object v0, p1, Ln2/n;->c:Ln2/r;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/f;->e:Lc5/b;

    iget-object v0, p1, Ln2/n;->d:Ljava/lang/Integer;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/f;->f:Lc5/b;

    iget-object v0, p1, Ln2/n;->e:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/f;->g:Lc5/b;

    iget-object v0, p1, Ln2/n;->f:Ljava/util/List;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/f;->h:Lc5/b;

    iget-object p1, p1, Ln2/n;->g:Lcom/google/android/datatransport/cct/internal/QosTier;

    invoke-interface {p2, p0, p1}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    return-void
.end method
