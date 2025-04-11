.class public final Ln2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# static fields
.field public static final a:Ln2/e;

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

    new-instance v0, Ln2/e;

    invoke-direct {v0}, Ln2/e;-><init>()V

    sput-object v0, Ln2/e;->a:Ln2/e;

    const-string v0, "eventTimeMs"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/e;->b:Lc5/b;

    const-string v0, "eventCode"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/e;->c:Lc5/b;

    const-string v0, "eventUptimeMs"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/e;->d:Lc5/b;

    const-string v0, "sourceExtension"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/e;->e:Lc5/b;

    const-string v0, "sourceExtensionJsonProto3"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/e;->f:Lc5/b;

    const-string v0, "timezoneOffsetSeconds"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/e;->g:Lc5/b;

    const-string v0, "networkConnectionInfo"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/e;->h:Lc5/b;

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

    check-cast p1, Ln2/s;

    check-cast p2, Lc5/d;

    check-cast p1, Ln2/m;

    iget-wide v0, p1, Ln2/m;->a:J

    sget-object p0, Ln2/e;->b:Lc5/b;

    invoke-interface {p2, p0, v0, v1}, Lc5/d;->b(Lc5/b;J)Lc5/d;

    iget-object p0, p1, Ln2/m;->b:Ljava/lang/Integer;

    sget-object v0, Ln2/e;->c:Lc5/b;

    invoke-interface {p2, v0, p0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/e;->d:Lc5/b;

    iget-wide v0, p1, Ln2/m;->c:J

    invoke-interface {p2, p0, v0, v1}, Lc5/d;->b(Lc5/b;J)Lc5/d;

    sget-object p0, Ln2/e;->e:Lc5/b;

    iget-object v0, p1, Ln2/m;->d:[B

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/e;->f:Lc5/b;

    iget-object v0, p1, Ln2/m;->e:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/e;->g:Lc5/b;

    iget-wide v0, p1, Ln2/m;->f:J

    invoke-interface {p2, p0, v0, v1}, Lc5/d;->b(Lc5/b;J)Lc5/d;

    sget-object p0, Ln2/e;->h:Lc5/b;

    iget-object p1, p1, Ln2/m;->g:Ln2/u;

    invoke-interface {p2, p0, p1}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    return-void
.end method
