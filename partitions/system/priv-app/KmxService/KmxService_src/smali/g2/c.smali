.class public interface abstract annotation Lg2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lg2/c;
        include = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
        name = ""
        namespace = ""
        required = false
        type = Ljava/lang/Object;
    .end subannotation
.end annotation


# virtual methods
.method public abstract include()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract namespace()Ljava/lang/String;
.end method

.method public abstract required()Z
.end method

.method public abstract type()Ljava/lang/Class;
.end method

.method public abstract value()Ljava/lang/Class;
.end method
