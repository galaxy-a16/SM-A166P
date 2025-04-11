.class public final Lt7/c;
.super Lt7/d;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(Lw8/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lt7/d;-><init>(Lw8/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lt7/d;->a:Lw8/d;

    invoke-interface {p0, p1}, Lvc/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method
