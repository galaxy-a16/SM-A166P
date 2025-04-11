.class public Ljunit/framework/JUnit4TestAdapterCache;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lorg/junit/runner/Description;",
        "Lpb/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final fInstance:Ljunit/framework/JUnit4TestAdapterCache;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljunit/framework/JUnit4TestAdapterCache;

    invoke-direct {v0}, Ljunit/framework/JUnit4TestAdapterCache;-><init>()V

    sput-object v0, Ljunit/framework/JUnit4TestAdapterCache;->fInstance:Ljunit/framework/JUnit4TestAdapterCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static getDefault()Ljunit/framework/JUnit4TestAdapterCache;
    .locals 1

    sget-object v0, Ljunit/framework/JUnit4TestAdapterCache;->fInstance:Ljunit/framework/JUnit4TestAdapterCache;

    return-object v0
.end method


# virtual methods
.method public asTest(Lorg/junit/runner/Description;)Lpb/d;
    .locals 1

    invoke-virtual {p1}, Lorg/junit/runner/Description;->isSuite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljunit/framework/JUnit4TestAdapterCache;->createTest(Lorg/junit/runner/Description;)Lpb/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljunit/framework/JUnit4TestAdapterCache;->createTest(Lorg/junit/runner/Description;)Lpb/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpb/d;

    return-object p0
.end method

.method public asTestList(Lorg/junit/runner/Description;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            ")",
            "Ljava/util/List<",
            "Lpb/d;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lpb/d;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Lpb/d;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/Description;

    invoke-virtual {p0, v1}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Lpb/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public createTest(Lorg/junit/runner/Description;)Lpb/d;
    .locals 3

    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lpb/c;

    invoke-direct {p0, p1}, Lpb/c;-><init>(Lorg/junit/runner/Description;)V

    return-object p0

    :cond_0
    new-instance v0, Lpb/f;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lpb/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/Description;

    invoke-virtual {p0, v1}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Lpb/d;

    move-result-object v1

    iget-object v2, v0, Lpb/f;->b:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getNotifier(Lpb/e;Lpb/a;)Ltc/c;
    .locals 2

    new-instance p0, Ltc/c;

    invoke-direct {p0}, Ltc/c;-><init>()V

    new-instance p1, Lpb/b;

    invoke-direct {p1}, Lpb/b;-><init>()V

    iget-object p2, p0, Ltc/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class v0, Lpb/b;

    const-class v1, Ltc/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ltc/d;

    invoke-direct {v0, p1, p0}, Ltc/d;-><init>(Lpb/b;Ltc/c;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
