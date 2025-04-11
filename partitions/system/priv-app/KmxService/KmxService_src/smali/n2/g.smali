.class public final Ln2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# static fields
.field public static final a:Ln2/g;

.field public static final b:Lc5/b;

.field public static final c:Lc5/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln2/g;

    invoke-direct {v0}, Ln2/g;-><init>()V

    sput-object v0, Ln2/g;->a:Ln2/g;

    const-string v0, "networkType"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/g;->b:Lc5/b;

    const-string v0, "mobileSubtype"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/g;->c:Lc5/b;

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

    check-cast p1, Ln2/u;

    check-cast p2, Lc5/d;

    check-cast p1, Ln2/p;

    iget-object p0, p1, Ln2/p;->a:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    sget-object v0, Ln2/g;->b:Lc5/b;

    invoke-interface {p2, v0, p0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Ln2/g;->c:Lc5/b;

    iget-object p1, p1, Ln2/p;->b:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    invoke-interface {p2, p0, p1}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    return-void
.end method
