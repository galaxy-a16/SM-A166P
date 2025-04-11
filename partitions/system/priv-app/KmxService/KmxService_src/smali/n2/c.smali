.class public final Ln2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# static fields
.field public static final a:Ln2/c;

.field public static final b:Lc5/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln2/c;

    invoke-direct {v0}, Ln2/c;-><init>()V

    sput-object v0, Ln2/c;->a:Ln2/c;

    const-string v0, "logRequest"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    move-result-object v0

    sput-object v0, Ln2/c;->b:Lc5/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ln2/q;

    check-cast p2, Lc5/d;

    check-cast p1, Ln2/j;

    iget-object p0, p1, Ln2/j;->a:Ljava/util/List;

    sget-object p1, Ln2/c;->b:Lc5/b;

    invoke-interface {p2, p1, p0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    return-void
.end method
