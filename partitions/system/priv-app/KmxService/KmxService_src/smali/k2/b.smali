.class public interface abstract annotation Lk2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lk2/b;
        id = ""
        schemaItemDefinition = "##irrelevant"
        schemaObjectPropertiesDefinition = "##irrelevant"
        schemaType = "any"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract id()Ljava/lang/String;
.end method
