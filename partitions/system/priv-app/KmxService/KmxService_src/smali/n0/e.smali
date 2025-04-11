.class public final Ln0/e;
.super Ln0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln0/a;->b:Ln0/a;

    invoke-direct {p0, v0}, Ln0/e;-><init>(Ln0/b;)V

    return-void
.end method

.method public constructor <init>(Ln0/b;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ln0/b;-><init>()V

    .line 2
    iget-object p0, p0, Ln0/b;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Ln0/b;->a:Ljava/util/LinkedHashMap;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
