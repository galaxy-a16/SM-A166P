.class public interface abstract annotation Lcom/fasterxml/jackson/annotation/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fasterxml/jackson/annotation/u;
        content = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
        contentFilter = Ljava/lang/Void;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
        valueFilter = Ljava/lang/Void;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract content()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end method

.method public abstract contentFilter()Ljava/lang/Class;
.end method

.method public abstract value()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end method

.method public abstract valueFilter()Ljava/lang/Class;
.end method
