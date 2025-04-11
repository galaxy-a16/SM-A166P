.class public final Lv5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv5/a;


# instance fields
.field public final a:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lv5/c;->a:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 0

    iget-object p0, p0, Lv5/c;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "DUP flag must be set for a resent PUBLISH ({})"

    iget-object p0, p0, Lv5/c;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lv5/c;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lv5/c;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lv5/c;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lv5/c;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lv5/c;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
