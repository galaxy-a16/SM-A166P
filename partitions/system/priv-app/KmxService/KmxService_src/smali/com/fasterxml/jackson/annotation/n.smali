.class public interface abstract annotation Lcom/fasterxml/jackson/annotation/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fasterxml/jackson/annotation/n;
        lenient = .enum Lcom/fasterxml/jackson/annotation/OptBoolean;->DEFAULT:Lcom/fasterxml/jackson/annotation/OptBoolean;
        locale = "##default"
        pattern = ""
        shape = .enum Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
        timezone = "##default"
        with = {}
        without = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract lenient()Lcom/fasterxml/jackson/annotation/OptBoolean;
.end method

.method public abstract locale()Ljava/lang/String;
.end method

.method public abstract pattern()Ljava/lang/String;
.end method

.method public abstract shape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
.end method

.method public abstract timezone()Ljava/lang/String;
.end method

.method public abstract with()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
.end method

.method public abstract without()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
.end method
