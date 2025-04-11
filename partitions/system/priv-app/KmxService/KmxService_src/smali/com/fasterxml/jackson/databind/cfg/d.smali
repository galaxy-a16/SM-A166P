.class public abstract Lcom/fasterxml/jackson/databind/cfg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _format:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

.field protected _ignorals:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

.field protected _include:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

.field protected _includeAsProperty:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

.field protected _isIgnoredType:Ljava/lang/Boolean;

.field protected _mergeable:Ljava/lang/Boolean;

.field protected _setterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

.field protected _visibility:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/d;->_format:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_format:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/d;->_include:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_include:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/d;->_includeAsProperty:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_includeAsProperty:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/d;->_ignorals:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_ignorals:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/d;->_setterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_setterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/d;->_visibility:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_visibility:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/d;->_isIgnoredType:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_isIgnoredType:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/cfg/d;->_mergeable:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_mergeable:Ljava/lang/Boolean;

    return-void
.end method

.method public static empty()Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/c;->a:Lcom/fasterxml/jackson/databind/cfg/c;

    return-object v0
.end method


# virtual methods
.method public getFormat()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_format:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    return-object p0
.end method

.method public getIgnorals()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_ignorals:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    return-object p0
.end method

.method public getInclude()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_include:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object p0
.end method

.method public getIncludeAsProperty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_includeAsProperty:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object p0
.end method

.method public getIsIgnoredType()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_isIgnoredType:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getMergeable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_mergeable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_setterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    return-object p0
.end method

.method public getVisibility()Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->_visibility:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;

    return-object p0
.end method
