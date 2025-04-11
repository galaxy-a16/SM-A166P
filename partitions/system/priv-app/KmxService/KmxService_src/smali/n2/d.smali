.class public final Ln2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# static fields
.field public static final a:Ln2/d;

.field public static final b:Lc5/b;

.field public static final c:Lc5/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln2/d;

    invoke-direct {v0}, Ln2/d;-><init>()V

    sput-object v0, Ln2/d;->a:Ln2/d;

    const-string v0, "clientType"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/d;->b:Lc5/b;

    const-string v0, "androidClientInfo"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/d;->c:Lc5/b;

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

    check-cast p1, Ln2/r;

    check-cast p2, Lc5/d;

    check-cast p1, Ln2/k;

    iget-object p0, p1, Ln2/k;->a:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    sget-object v0, Ln2/d;->b:Lc5/b;

    invoke-interface {p2, v0, p0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/d;->c:Lc5/b;

    iget-object p1, p1, Ln2/k;->b:Ln2/a;

    invoke-interface {p2, p0, p1}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    return-void
.end method
