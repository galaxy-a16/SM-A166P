.class public final Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

.field public static final EXPLICIT_ONLY:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

.field public static final USE_DELEGATING:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

.field public static final USE_PROPERTIES_BASED:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _allowJDKTypeCtors:Z

.field protected final _requireCtorAnnotation:Z

.field protected final _singleArgMode:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->HEURISTIC:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->DEFAULT:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->PROPERTIES:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->USE_PROPERTIES_BASED:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->DELEGATING:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->USE_DELEGATING:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->REQUIRE_MODE:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->EXPLICIT_ONLY:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_singleArgMode:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_requireCtorAnnotation:Z

    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_allowJDKTypeCtors:Z

    return-void
.end method


# virtual methods
.method public allowJDKTypeConstructors()Z
    .locals 0

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_allowJDKTypeCtors:Z

    return p0
.end method

.method public requireCtorAnnotation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_requireCtorAnnotation:Z

    return p0
.end method

.method public shouldIntrospectorImplicitConstructors(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_requireCtorAnnotation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_allowJDKTypeCtors:Z

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/h;->u(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-class p0, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public singleArgCreatorDefaultsToDelegating()Z
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_singleArgMode:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->DELEGATING:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public singleArgCreatorDefaultsToProperties()Z
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_singleArgMode:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->PROPERTIES:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public singleArgMode()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_singleArgMode:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    return-object p0
.end method

.method public withAllowJDKTypeConstructors(Z)Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_singleArgMode:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_requireCtorAnnotation:Z

    invoke-direct {v0, v1, p0, p1}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;ZZ)V

    return-object v0
.end method

.method public withRequireAnnotation(Z)Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_singleArgMode:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_allowJDKTypeCtors:Z

    invoke-direct {v0, v1, p1, p0}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;ZZ)V

    return-object v0
.end method

.method public withSingleArgMode(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;)Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_requireCtorAnnotation:Z

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_allowJDKTypeCtors:Z

    invoke-direct {v0, p1, v1, p0}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;ZZ)V

    return-object v0
.end method
