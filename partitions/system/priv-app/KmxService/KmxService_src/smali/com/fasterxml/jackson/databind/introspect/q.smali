.class public abstract Lcom/fasterxml/jackson/databind/introspect/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/util/q;


# static fields
.field public static final a:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/q;->a:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/q;->h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/q;->o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/q;->j()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/q;->g()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract c()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
.end method

.method public d()Lcom/fasterxml/jackson/databind/introspect/a0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Lcom/fasterxml/jackson/databind/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public f()[Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/q;->k()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/q;->j()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
.end method

.method public abstract getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
.end method

.method public abstract getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
.end method

.method public abstract h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
.end method

.method public abstract i()Ljava/util/Iterator;
.end method

.method public abstract j()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
.end method

.method public abstract k()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method

.method public abstract l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method

.method public abstract m()Lcom/fasterxml/jackson/databind/JavaType;
.end method

.method public abstract n()Ljava/lang/Class;
.end method

.method public abstract o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method

.method public abstract p()Z
.end method

.method public abstract q()Z
.end method

.method public abstract r(Lcom/fasterxml/jackson/databind/PropertyName;)Z
.end method

.method public abstract s()Z
.end method

.method public abstract t()Z
.end method

.method public abstract u()Z
.end method

.method public v()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
